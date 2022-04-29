import os
from bench_modules.benchmark import BaseBenchmark
import re

class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('fluidSim')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    self._build = f'FOPENMP="{compile_flags}" make -f Makefile.adaptive'
    self._clean = 'make -f Makefile.adaptive clean'
    self._inputs = []
    dimX = [512, 1024, 2048, 3192, 4096, 5120, 6144, 7168, 8192]
    for x in dimX:
     command = f'100 {x} {x}'
     self._inputs.append(command)
    self._executable = f'main'

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

    print(tmp, type(tmp))
    return tmp

  def extractInputFromCMD(self, cmd):
    vals=cmd.split(' ')
    cmd=':'.join(vals[1:])
    return cmd

  def visualize(self, df, outfile, sizes):
    import matplotlib
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    import pandas as pd
    fig, ax = plt.subplots(figsize=sizes)
    df[['Iterations', 'Height', 'Width']] = df['Input'].str.split(':', expand=True)
    df[['Iterations', 'Height', 'Width']] = df[['Iterations', 'Height', 'Width']].astype(int)
    df['Grid'] = df['Height']
    defThreads=256
    df = df.rename(columns={'Policy' : 'Num Team Threads'})
    df['Num Team Threads'] = (df['Num Team Threads'].str.split('_', expand=True))[1].astype(int)
    oracle = df[df['Execution Type'] == 'Oracle']
    online = df[df['Execution Type'] == 'Online']
    default = df[((df['Num Team Threads'] == defThreads) & (df['Execution Type'] == 'Static'))]
    default = default.groupby(['System', 'Grid']).mean().reset_index()
    default['Execution Type'] ='default'
    online = online.groupby(['Execution Type', 'System', 'Grid', 'Num Team Threads']).mean().reset_index()
    oracle = oracle.groupby(['Execution Type','System', 'Grid', 'Num Team Threads']).mean().reset_index()
    oracle = oracle.set_index([ "System", "Grid"])
    online = online.set_index([ "System", "Grid"])
    default = default.set_index([ "System", "Grid"])
    online['Speedup'] = default['Execution time (s)'] / online['Execution time (s)']
    oracle['Speedup'] = default['Execution time (s)'] / oracle['Execution time (s)']
    df = df[((df['Execution Type'] == 'Static'))]
    df = df.groupby(['System', 'Grid', 'Num Team Threads']).mean().reset_index()
    df['Speedup'] = -1.0
    df = df.set_index(['System', 'Grid'])
    for d in df['Num Team Threads'].unique():
        print('Current')
        df.loc[df['Num Team Threads'] == d, 'Speedup'] = df.loc[df['Num Team Threads'] == defThreads, 'Execution time (s)'] / df.loc[df['Num Team Threads'] == d, 'Execution time (s)']
        df.loc[df['Num Team Threads'] == d, 'Execution Type'] = f'Static,Best'
    print("Online")
    online = online.reset_index()
    oracle = oracle.reset_index()
    df = df.reset_index()
    idx = df.groupby(['System', 'Grid'])['Speedup'].transform(max) == df['Speedup']
    print("TMP")
    df = df[idx]
    df = pd.concat([online, oracle, df.reset_index()])
    print(df)

    sns.set(font_scale=1.25)
    sns.set_style("whitegrid")
    systems=['Power9 + V100','Intel + P100', 'AMD + MI50']
    markers = { 32 : '*', 64 : 'd', 128 : '>', 256 : '<', 512 : 'X', 1024 : 'P' , 'varies' : 's'}  
    with sns.plotting_context(rc={'text.usetex' : True}):
        g = sns.relplot(data=df, x='Grid', 
                        col_order = ['lassen', 'pascal', 'corona'],
                        y='Speedup',
                        col='System', 
                        hue='Execution Type', 
                        style='Num Team Threads', 
                        markers=markers,
                        edgecolor='black',
                        aspect=1.6,
                        alpha=0.7,
                        s=200,
                        lw=4, kind='scatter',
                        facet_kws={'sharey': True, 'sharex': True},
                        legend="full")
        plt.setp(g._legend.get_title(), fontsize=20)
        sns.move_legend(g,loc='center', frameon=True, ncol=3)
        leg = g._legend
        leg.set_bbox_to_anchor([0.85,0.4]) 
        for lh in g._legend.legendHandles:
            lh.set_alpha(0.7)
            lh._sizes = [120]
            lh
        for c,s in zip(g.axes.flat,systems):
            c.yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
            c.axhline(y=1.0, c='gray')
            c.set_xlabel("X-Axis", fontsize = 24)
            c.set_ylabel("Y-Axis", fontsize = 24)
            c.set_title(s, fontsize = 24)
        g.set_axis_labels(r'Grid Size ($n^2)$', 'speedup')
        plt.tight_layout()
        plt.savefig(f'{outfile}_threads_speedup.pdf')
        plt.close()
        return
