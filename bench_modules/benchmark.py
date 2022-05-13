from abc import ABC, abstractmethod
import numpy as np

class BaseBenchmark(ABC):
  def __init__(self, name):
    self._name = name

  @property
  def name(self):
    return self._name

  @name.setter
  def name(self, value):
    self._name = value

  @property
  @abstractmethod
  def build(self):
    pass

  @property
  @abstractmethod
  def clean(self):
    pass

  @property
  @abstractmethod
  def clean(self):
    pass

  @property
  @abstractmethod
  def inputs(self):
    pass

  @property
  @abstractmethod
  def executable(self):
    pass

  @property
  @abstractmethod
  def root(self):
    pass

  @abstractmethod
  def getTime(self,stdout):
    pass

  @abstractmethod
  def extractInputFromCMD(self, cmd):
    pass

  def heatmap(self, df, outfile, feature_name, sizes, logx=False):
    import matplotlib
    import pandas as pd
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    from matplotlib import rcParams
    import matplotlib.ticker as ticker
    import seaborn as sns
    systems=['Power9 + V100','Intel + P100', 'AMD + MI50']
    col_order = ['lassen', 'pascal', 'corona']
    input_sizes = df[feature_name].unique()
    #Count objects
    plot = df.groupby(['System', feature_name, 'Execution Type'])['Policy'].value_counts(normalize=True).copy(deep=True)
    # Set Name of Column
    plot = plot.reset_index(name='% GPU Executions')
    # Drop Static, CPU
    plot = plot[plot['Execution Type'] != 'Static,CPU']
    plot = plot[plot['Execution Type'] != 'Static,GPU']
    # Create 2D -Arrray
    plot = plot.pivot(index=['System', 'Execution Type', 'Policy'], columns=feature_name, values='% GPU Executions').reset_index()
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
    plt.rc('text', usetex=True)
    rcParams['font.family'] = 'sans-serif'
    # Go Over the systems and plot the heatmap

    for s, gp in plot.groupby('System'):
      # get position in the plot grid
      index = col_order.index(s)
      ax = axes[index]
      i = index
      tmp = gp.drop(['System', 'Policy'], axis=1).copy().set_index('Execution Type') 
      print(tmp.columns.values)
      tg = [u"${}$".format(y) for y in tmp.columns.values]
      if logx: 
          tg = [u"$2^{}$".format('{'+str(int(np.log2(y)))+'}') for y in tmp.columns.values]
      g = sns.heatmap(tmp, annot=True, fmt=".0f", ax = ax, 
              vmin=0, vmax=100, cbar=True,cbar_ax=cbar_ax,linecolor='white', 
              linewidths=0.5, square=True, cmap=sns.light_palette("seagreen", as_cmap=True),
              cbar_kws={'label': '% Experiments \n Executed on GPU', 'shrink': 10},
              annot_kws={"fontsize":8}, xticklabels=tg)
      print(g)
      g.xaxis.set_major_formatter(ticker.FuncFormatter(lambda x,pos: ('{{:.{:1d}f}}'.format(int(np.maximum(-np.log10(x),0)))).format(x)))
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

  def scatterplot(self, df, outfile, feature_name, sizes, xAxisTitle, yAxisTitle,  logx=False, xbase=2, logy = False, ybase=2, ncol=1, legendPos=[0.95,0.75]):
    import seaborn as sns
    import matplotlib
    import pandas as pd
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    from matplotlib import rcParams
    systems=['Power9 + V100','Intel + P100', 'AMD + MI50']
    plt.rc('text', usetex=True)
    rcParams['font.family'] = 'sans-serif'
    with sns.plotting_context(rc={"legend.fontsize":20, 'text.usetex' : True}):
        g = sns.relplot(data=df, x=feature_name, y='Speedup',
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
        sns.move_legend(g,loc='center', title='Policy', frameon=True, ncol=ncol)
        leg = g._legend
        leg.set_bbox_to_anchor(legendPos) 
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
            c.set_xlabel('', fontsize = 34)
            c.set_ylabel('', fontsize = 34)
            if logx:
                c.set_xscale('log', base=xbase)
            if logy:
                c.set_xscale('log', base=ybase)
            c.set_title(s, fontsize = 38)
        print(axes.shape)
        g.set_axis_labels(xAxisTitle, yAxisTitle)
        plt.tight_layout()
        plt.savefig(f'{outfile}_speedup.pdf')
        plt.close()

  def computeSpeedup(self, df, feature_name):
    import pandas as pd
    unique_policies = df['Execution Type'].unique()
    df = df.groupby(['System', 'Execution Type', feature_name]).mean().reset_index()
    df = df.pivot(index=['System', feature_name], columns='Execution Type', values='Execution time (s)').reset_index()
    unique_policies = unique_policies[ unique_policies != 'Static,GPU']
    for u in unique_policies:
        df[f'Speed Up {u}'] = df['Static,GPU']/df[u] 

    for u in unique_policies:
        df[u] = df[f'Speed Up {u}']
        df = df.drop([f'Speed Up {u}'], axis=1)
    df = df.drop(['Static,GPU'], axis = 1)
    df = pd.melt(df, id_vars=['System', feature_name], value_name = 'Speedup', var_name = 'Policy', value_vars=unique_policies).reset_index()
    return df
