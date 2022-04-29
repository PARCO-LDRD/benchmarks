import os
from bench_modules.benchmark import BaseBenchmark
import re



class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('RSBench')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    self._build = f'FOPENMP="{compile_flags}" make'
    self._clean = 'make clean'
    self._inputs = []
    for size in ['small', 'large']:
      for i in [8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384]:
        lus = i * 5000
        in_args = f'-m event -s {size} -l {lus}'
        self._inputs.append(in_args)
    self._executable = f'rsbench'

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
    exec_time_pattern = '__ExecutionTime__:(.*)'
    tmp =  re.findall(exec_time_pattern, stdout)
    if len(tmp) == 0:
      return None
    print(tmp, type(tmp))
    return tmp[0]

  def extractInputFromCMD(self, cmd):
    vals=cmd.split(' ')
    return f'{vals[4]}:{vals[6]}'

  def visualize(self, df, outfile, sizes):
    import pandas as pd
    import matplotlib.pyplot as plt
    import matplotlib
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    fig, ax = plt.subplots(figsize=sizes)
    df[['Type', 'lookups']] = df['Input'].str.split(':', expand=True)
    df['lookups'] = df['lookups'].astype(int)
    df['Execution time (s)'] = df['Execution time (s)']/1e6
    df = df[df ['lookups'] >= 256*5000]
    df = df.rename(columns={'Policy' : 'Num Team Threads'})
    defThreads=256
    df['Num Team Threads'] = (df['Num Team Threads'].str.split('_', expand=True))[1].astype(int)
    df=df.drop(['Input'],axis=1)
    df = df.groupby(['System', 'Execution Type', 'Num Team Threads', 'lookups']).mean().reset_index()
    df['Merged'] = df['Execution Type'] + ':' + df['Num Team Threads'].astype(str)
    df = df.drop(['Execution Type', 'Num Team Threads'], axis=1)
    unique = (df['Merged'].unique())
    df = df.pivot(index=['System', 'lookups'], columns='Merged', values='Execution time (s)').reset_index()

    vals = []
    for v in df.columns:
        if v != 'System' and v != 'lookups':
            vals.append(v)
            df[v] = df['Static:256'] / df[v] 
    cols = []
    for v in vals:
        if 'Static' not in v:
            cols.append(v)
    df = df[['System', 'lookups'] + cols]
    df = pd.melt(df, id_vars=['System', 'lookups'], value_name = 'Speedup', var_name = 'Merged', value_vars=cols).reset_index().dropna(axis=0)
    df[['Execution Type', 'Num Team Threads']] = df['Merged'].str.split(':', expand=True)  
    df['Num Team Threads'] = df['Num Team Threads'].astype(int)
    df = df[df['Execution Type'] != 'Online']
    df = df.drop('Merged', axis=1)

    sns.set(font_scale=1.25)
    sns.set_style("whitegrid")
    systems=['Power9 + V100','Intel + P100']
    markers = { 32 : '*', 64 : 'd', 128 : '>', 256 : '<', 512 : 'X', 1024 : 'P' }  
    with sns.plotting_context(rc={'text.usetex' : True}):
        g = sns.relplot(data=df, x='lookups', 
                        col_order = ['lassen', 'pascal'],
                        y='Speedup',
                        col='System', 
                        hue='Execution Type', 
                        style='Num Team Threads', 
                        markers=markers,
                        edgecolor='black',
                        alpha=0.7,
                        aspect=1.6,
                        lw=4, kind='scatter',
                        facet_kws={'sharey': False, 'sharex': True},
                        legend="full")
        plt.setp(g._legend.get_title(), fontsize=20)
        sns.move_legend(g,loc='center', frameon=True, ncol=3)
        leg = g._legend
        leg.set_bbox_to_anchor([0.47,0.75]) 
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
            c.set_xscale('log', base=2)
        print(axes.shape)
        g.set_axis_labels('Look Ups\n($log2$)', 'speedup')
        #plt.gca().yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
        plt.tight_layout()
        print("END")
        plt.savefig(f'{outfile}_threads_speedup.pdf')
        plt.close()
        return
