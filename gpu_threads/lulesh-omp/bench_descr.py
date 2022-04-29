import os
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
    for s in range(50,130, 10):
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

  def visualize(self, df, outfile, sizes):
    import pandas as pd
    import matplotlib
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    defThread = 256
    print(df[df['System'] == 'corona'])
    return
    fig, ax = plt.subplots(figsize=sizes)
    df['Input'] = df['Input'].astype(int)
    df = df.rename(columns={'Policy' : 'Num Team Threads'})
    df = df.rename(columns={'Policy' : 'Num Team Threads'})
    df.loc[df['Num Team Threads'] != 'varies', 'Num Team Threads'] = (df.loc[df['Num Team Threads'] != 'varies','Num Team Threads']).str.split('_', expand=True)[1].astype(int)
    oracle = df[df['Execution Type'] == 'Oracle']
    online = df[df['Execution Type'] == 'Online']
    default = df[((df['Num Team Threads'] == defThread) & (df['Execution Type'] == 'Static'))]
    default = default.groupby(['System', 'Input']).mean().reset_index()
    default['Execution Type'] ='default'
    online = online.groupby(['Execution Type', 'System', 'Input', 'Num Team Threads']).mean().reset_index()
    oracle = oracle.groupby(['Execution Type','System', 'Input', 'Num Team Threads']).mean().reset_index()
    oracle = oracle.set_index([ "System", "Input"])
    online = online.set_index([ "System", "Input"])
    default = default.set_index([ "System", "Input"])
    online['Speedup'] = default['Execution time (s)'] / online['Execution time (s)']
    oracle['Speedup'] = default['Execution time (s)'] / oracle['Execution time (s)']
    df = df.groupby(['Execution Type', 'System', 'Input', 'Num Team Threads']).mean().reset_index()
    df['Speedup'] = -1.0
    df = df.set_index(['System', 'Execution Type', 'Input'])
    for d in df['Num Team Threads'].unique():
        df.loc[df['Num Team Threads'] == d, 'Speedup'] = df.loc[df['Num Team Threads'] == defThread, 'Execution time (s)'] / df.loc[df['Num Team Threads'] == d, 'Execution time (s)']
    df = df.reset_index()
    df['Execution Type'] = 'Static,Best'
    idx = df.groupby(['System', 'Input'])['Speedup'].transform(max) == df['Speedup']
    df = df[idx]
    online = online.reset_index()
    oracle = oracle.reset_index()
    df = pd.concat([online, oracle, df.reset_index()])
    sns.set(font_scale=1.25)
    sns.set_style("whitegrid")
    systems=['Power9 + V100','Intel + P100', 'AMD + MI50']
    markers = { 32 : '*', 64 : 'd', 128 : '>', 256 : '<', 512 : 'X', 1024 : 'P' , 'varies' : 's'}  
    markers = { 32 : '*', 64 : 'd', 128 : '>', 256 : '<', 512 : 'X', 1024 : 'P' , 'varies' : 's'}  
    #df = df[df['Num Team Threads'] != 256]
    with sns.plotting_context(rc={'text.usetex' : True}):
        g = sns.relplot(data=df, x='Input', 
                        y='Speedup',
                        col_order = ['lassen', 'pascal', 'corona'],
                        col='System', 
                        hue='Execution Type', 
                        style='Num Team Threads', 
                        markers=markers,
                        edgecolor='black',
                        aspect=1.6,
                        s=200,
                        alpha=0.7,
                        lw=4, kind='scatter',
                        facet_kws={'sharey': True, 'sharex': True},
                        legend="full")
        plt.setp(g._legend.get_title(), fontsize=20)
        sns.move_legend(g,loc='center', frameon=True, ncol=3)
        leg = g._legend
        leg.set_bbox_to_anchor([0.5,0.4]) 
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
        g.set_axis_labels('Size', 'speedup')
        #plt.gca().yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
        plt.tight_layout()
        plt.savefig(f'{outfile}_threads_speedup.pdf')
        plt.close()
        return

    return

