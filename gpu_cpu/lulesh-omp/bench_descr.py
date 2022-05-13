import os
import numpy as np
from bench_modules.benchmark import BaseBenchmark
import re

class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('LULESH')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    self._build = f'FOPENMP="{compile_flags}" make -f Makefile.adaptive'
    self._clean = 'make -f Makefile.adaptive clean'
    self._inputs = []
    for s in range(40,130, 10):
      self.inputs.append(f'-s {s}')

    self._executable = f'lulesh'

  @property
  def build(self):
    return self._build

  @property
  def clean(self):
    return self._clean

  @property
  def inputs(self):
    return self._inputs

  @property
  def executable(self):
    return self._executable

  @property
  def root(self):
    return self._root

  def getTime(self, stdout):
    print(' I am trying t find execution time')
    exec_time_pattern = 'Elapsed time\s*=\s* (.*) \(s\)'
    tmp =  re.findall(exec_time_pattern, stdout)[0]
    print(tmp, type(tmp))
    return tmp

  def extractInputFromCMD(self, cmd):
    return int(cmd.split(' ')[-1])

    
  def heatmap(self, df, outfile, sizes):
    import matplotlib
    import pandas as pd
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    systems=['Power9 + V100','Intel + P100', 'AMD + MI50']
    col_order = ['lassen', 'pascal', 'corona']
    input_sizes = df['size'].unique()
    #Count objects
    plot = df.groupby(['System', 'size', 'Execution Type'])['Policy'].value_counts(normalize=True).copy(deep=True)
    # Set Name of Column
    plot = plot.reset_index(name='% GPU Executions')
    # Drop Static, CPU
    plot = plot[plot['Execution Type'] != 'Static,CPU']
    plot = plot[plot['Execution Type'] != 'Static,GPU']
    # Create 2D -Arrray
    plot = plot.pivot(index=['System', 'Execution Type', 'Policy'], columns='size', values='% GPU Executions').reset_index()
    # Cells which do not have a value means that such an execution never happened. So, set the % to 0.
    plot = plot.replace(np.nan, 0)
    # Ugly code to do fill missing values.
    for e in plot['Execution Type'].unique():
        for s in plot['System'].unique():
            vals= plot.loc[(plot['System'] == s) & (plot['Execution Type'] == e),'Policy'].unique()
            if 'gpu' not in vals:
                for c in input_sizes:
                    # If we do not have a GPU execution lets create a "fake" one with 1 - cpu percent. This is
                    # a binary problem
                    plot.loc[(plot['System'] == s) & (plot['Execution Type'] == e),c] = 1.0 - plot.loc[(plot['System'] == s) & (plot['Execution Type'] == e),c]
                # Now we swapped the percentage from cpu->gpu we need to set the name.
                plot.loc[(plot['System'] == s) & (plot['Execution Type'] == e),'Policy'] = 'gpu' 
    plot = plot[plot['Policy'] != 'cpu']
    for c in input_sizes:
        plot[c] = plot[c] * 100.0
    
    #create figure and #subplots
    f, (axes) = plt.subplots(1, len(plot['System'].unique()), figsize=sizes)
    # Sizes of color bar axes [left, bottom, width, height] 
    cbar_ax = f.add_axes([.92, .34, .01, .3])
    # Go Over the systems and plot the heatmap
    for s, gp in plot.groupby('System'):
      # get position in the plot grid
      index = col_order.index(s)
      ax = axes[index]
      i = index
      tmp = gp.drop(['System', 'Policy'], axis=1).copy().set_index('Execution Type') 
      g = sns.heatmap(tmp, annot=True, fmt=".0f", ax = ax, 
              vmin=0, vmax=100, cbar=True,cbar_ax=cbar_ax,linecolor='white', 
              linewidths=0.5, square=True, cmap=sns.light_palette("seagreen", as_cmap=True),
              cbar_kws={'label': '% Experiments \n Executed on GPU', 'shrink': 10},
              annot_kws={"fontsize":8})
      g.set_yticklabels(g.get_yticklabels(), rotation = 0)
      g.set_xticklabels(g.get_xticklabels(), rotation = 30)
      ax.set_title(systems[index])
      ax.set_ylabel('')
      if i != 0:
          ax.get_yaxis().set_visible(False)
    plt.yticks(rotation=0)
    #Manually adjust space between subplots.
    plt.subplots_adjust(wspace=0.02, hspace=0)
    print(f'{outfile}_heatmap.pdf')
    f.savefig(f'{outfile}_heatmap.pdf',bbox_inches='tight')
    plt.close()


  def computeSpeedup(self, df):
    import pandas as pd
    unique_policies = df['Execution Type'].unique()
    df = df.groupby(['System', 'Execution Type', 'size']).mean().reset_index()
    df = df.pivot(index=['System', 'Input'], columns='Execution Type', values='Execution time (s)').reset_index()
    unique_policies = unique_policies[ unique_policies != 'Static,GPU']
    for u in unique_policies:
        df[f'Speed Up {u}'] = df['Static,GPU']/df[u] 

    for u in unique_policies:
        df[u] = df[f'Speed Up {u}']
        df = df.drop([f'Speed Up {u}'], axis=1)
    df = df.drop(['Static,GPU'], axis = 1)
    df = pd.melt(df, id_vars=['System', 'Input'], value_name = 'Speedup', var_name = 'Policy', value_vars=unique_policies).reset_index()
    return df

  def computeAlternateSpeedup(self, df):
    import pandas as pd
    baseline = df[df['Execution Type'] == 'Static,GPU'].copy()
    baseline = baseline.groupby(['System', 'size']).mean().reset_index()
    df['Speedup'] = -1.0
    for s in baseline['System'].unique():
        for i in baseline['size'].unique():
            bs = baseline.loc[((baseline['System'] == s) & (baseline['size'] == i)), 'Execution time (s)'].values[0]
            df.loc[((df['System'] == s) & (df['size'] == i)),'Speedup'] = bs  / df.loc[((df['System'] == s) & (df['size'] == i)), 'Execution time (s)']
    df = df.drop(df[df['Execution Type'] =='Static,GPU'].index)
    return df

  def scatterplot(self, df, outfile, sizes):
    import seaborn as sns
    systems=['Power9 + V100','Intel + P100', 'AMD + MI50']
    import matplotlib
    import pandas as pd
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    from matplotlib import rcParams
    plt.rc('text', usetex=True)
    rcParams['font.family'] = 'sans-serif'
    with sns.plotting_context(rc={"legend.fontsize":20, 'text.usetex' : True}):
        g = sns.relplot(data=df, x='Input', y='Speedup',
                        col='System', hue='Policy',
                        col_order = ['lassen', 'pascal', 'corona'],
                        markers=True,
                        style='Policy',
                        edgecolor='black', 
                        aspect=1.6,
                        alpha=0.9,
                        s=200,
                        lw=6, kind='scatter',
                        facet_kws={'sharey': False, 'sharex': True},
                        legend="full",
                        )
        plt.setp(g._legend.get_title(), fontsize=20)
        sns.move_legend(g,loc='center', title='Policy', frameon=True)
        leg = g._legend
        leg.set_bbox_to_anchor([0.95,0.75]) 
        for lh in g._legend.legendHandles:
            lh.set_alpha(0.9)
            lh._sizes = [200]
            lh
        axes = g.axes
        for c,s in zip(g.axes.flat,systems):
            c.set_yticklabels(c.get_yticklabels(), fontdict={'size':30})
            c.set_xticklabels(c.get_xticklabels(), fontdict={'size':30},rotation = 30)
            c.yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
            c.xaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda x, _: '{:.3g}'.format(x)))
            c.axhline(y=1.0, c='gray')
            c.set_xlabel("X-Axis", fontsize = 34)
            c.set_ylabel("Y-Axis", fontsize = 34)
            c.set_title(s, fontsize = 38)
        print(axes.shape)
        g.set_axis_labels('Size', 'speedup')
        plt.tight_layout()
        plt.savefig(f'{outfile}_speedup.pdf')
        plt.close()


  def visualize(self, df, outfile, sizes):
    import matplotlib
    import pandas as pd
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    sns.set_style("whitegrid")

    df['size'] = df['Input'].astype(int)
    df=df[df['size'] > 40]
    df.loc[df['Execution Type'] == 'Static', 'Execution Type'] = 'Static,' + df.loc[df['Execution Type'] == 'Static', 'Policy'].str.upper()
    self.heatmap(df, outfile, sizes)
    df = self.computeSpeedup(df) 
    self.scatterplot(df, outfile, sizes)



