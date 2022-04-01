import os
from bench_modules.benchmark import BaseBenchmark
import re

class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('amgmk')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    self._build = f'FOPENMP="{compile_flags}" make -f Makefile.adaptive'
    self._clean = 'make -f Makefile.adaptive clean'
    self._inputs = []
    for i in range(4, 12+1):
      self._inputs.append('%d %d %d'%(i*16, i*16, i*16))
    self._executable = f'AMGMk'

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
    exec_time_pattern = 'Wall time = (.*) seconds'
    tmp =  re.findall(exec_time_pattern, stdout)[0]
    print(tmp, type(tmp))
    return tmp

  def extractInputFromCMD(self, cmd):
    return ','.join(cmd.split(' ')[1:])

  def visualize(self, df, outfile, sizes):
    import matplotlib
    import pandas as pd
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    fig, ax = plt.subplots(figsize=sizes)
    df['Input'] = df['Input'].str.split(',', expand=True)[0] 
    df['Input'] = df['Input'].astype(int)
    df = df[(df['Input'] > 4*16) & (df['Input'] < 12 * 16)]

    df.loc[df['Execution Type'] == 'Static', 'Execution Type'] = 'Static,' + df.loc[df['Execution Type'] == 'Static', 'Policy'].str.upper()
    unique_policies = df['Execution Type'].unique()
    df = df.groupby(['System', 'Execution Type', 'Input']).mean().reset_index()
    print(df)
    df = df.pivot(index=['System', 'Input'], columns='Execution Type', values='Execution time (s)').reset_index()
    print(df)
    print(unique_policies)
    unique_policies = unique_policies[ unique_policies != 'Static,GPU']
    for u in unique_policies:
        df[f'Speed Up {u}'] = df['Static,GPU']/df[u] 

    for u in unique_policies:
        df[u] = df[f'Speed Up {u}']
        df = df.drop([f'Speed Up {u}'], axis=1)
    df = df.drop(['Static,GPU'], axis = 1)
    df = pd.melt(df, id_vars=['System', 'Input'], value_name = 'Speedup', var_name = 'Policy', value_vars=unique_policies).reset_index()
    sns.set(font_scale=1.25)
    sns.set_style("whitegrid")
    systems=['Power9 + V100','Intel + P100', 'AMD + MI50']
    with sns.plotting_context(rc={"legend.fontsize":20, 'text.usetex' : True}):
        g = sns.relplot(data=df, x='Input', y='Speedup',
                        col='System', hue='Policy',
                        col_order = ['lassen', 'pascal', 'corona'],
                        markers=True,
                        style='Policy',
                        edgecolor='black', 
                        aspect=1.6,
                        alpha=0.7,
                        s=120,
                        lw=2, kind='scatter',
                        facet_kws={'sharey': False, 'sharex': True},
                        legend="full",
                        )
        plt.setp(g._legend.get_title(), fontsize=20)
        sns.move_legend(g,loc='center', title='Policy', frameon=True)
        leg = g._legend
        leg.set_bbox_to_anchor([0.95,0.75]) 
        for lh in g._legend.legendHandles:
            lh.set_alpha(0.7)
            lh._sizes = [120]
            lh
        axes = g.axes
        for c,s in zip(g.axes.flat,systems):
            c.yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
            c.axhline(y=1.0, c='gray')
            c.set_xlabel("X-Axis", fontsize = 24)
            c.set_ylabel("Y-Axis", fontsize = 24)
            c.set_title(s, fontsize = 24)
        print(axes.shape)
        g.set_axis_labels(r'Grid Size ($n^3)$', 'speedup')
        #plt.gca().yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
        plt.tight_layout()
        plt.savefig(f'{outfile}_speedup.pdf')
        plt.close()


