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
    dimX = [64, 128, 256, 512]
    dimY = [64, 128, 256, 512]
    for x in dimX:
      for y in dimY:
        command = f'10000 {x} {y}'
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
    df = df[ df['Height'] >= df['Width']]
    df['Input'] = df['Input'].str.replace('10000:', '')
    df['Input'] = df['Input'].str.replace('X', 'X')
    df['N'] = df['Height'] * df['Width']
    df = df.rename(columns={'Policy' : 'Num Team Threads'})
    df['Num Team Threads'] = (df['Num Team Threads'].str.split('_', expand=True))[1].astype(int)
    oracle = df[df['Execution Type'] == 'Oracle']
    online = df[df['Execution Type'] == 'Online']
    online['Num Team Threads'] = 'Varies'
    default = df[((df['Num Team Threads'] == 128) & (df['Execution Type'] == 'Static'))]
    default = default.groupby(['System', 'Input']).mean().reset_index()
    default['Execution Type'] ='default'
    online = online.groupby(['Execution Type', 'System', 'Input', 'Num Team Threads']).mean().reset_index()
    oracle = oracle.groupby(['Execution Type','System', 'Input', 'Num Team Threads']).mean().reset_index()
    online['Speedup'] = default['Execution time (s)'] / online['Execution time (s)']

    oracle['Speedup'] = default['Execution time (s)'] / oracle['Execution time (s)']
    df = df[((df['Execution Type'] == 'Static'))]
    df = df.groupby(['System', 'Input', 'Num Team Threads']).mean().reset_index()
    df['Speedup'] = -1.0
    df = df.set_index(['System', 'Input'])
    for d in df['Num Team Threads'].unique():
        print('Current')
        df.loc[df['Num Team Threads'] == d, 'Speedup'] = df.loc[df['Num Team Threads'] == 128, 'Execution time (s)'] / df.loc[df['Num Team Threads'] == d, 'Execution time (s)']
        df.loc[df['Num Team Threads'] == d, 'Execution Type'] = f'Static,{d}'
    print("Online")
    df = df[df["Num Team Threads"].isin([64,256,512])]
    df = pd.concat([online, oracle, df.reset_index()])
    print(df)
    g = sns.relplot(data=df, x='N', 
                    y='Speedup',
                    col='System', 
                    hue='Execution Type', 
                    style='Num Team Threads', 
                    kind='scatter',
                    edgecolor='black',
                    alpha=0.7,
                    facet_kws={'sharey': False, 'sharex': True}
                    )
    for r in g.axes:
        for c in r:
            c.axhline(y=1.0, c='gray')
            c.set_xscale('log', base=2)
    g.set_axis_labels('Size', 'Execution time (s)\nlog2')
    g.set_xticklabels(rotation=-90)
    plt.gca().yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
    plt.tight_layout()
    plt.savefig(f'{outfile}_threads_speedup.pdf')
    plt.close()

