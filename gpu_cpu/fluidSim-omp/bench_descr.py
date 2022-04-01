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
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    fig, ax = plt.subplots(figsize=sizes)
    df[['Cols', 'Layers', 'Iterations']] = df['Input'].str.split(':', expand=True)
    df[['Cols', 'Layers', 'Iterations']] = df[['Cols', 'Layers', 'Iterations']].astype(int)
    df['N'] = df['Cols'] * df['Layers'] * df['Iterations']
    df.loc[df['Execution Type'] =='Static', 'Execution Type'] = df.loc[df['Execution Type'] == 'Static', 'Policy']

    stats_df = df.copy(deep=True)
    unique_policies = stats_df['Execution Type'].unique()
    stats_df = stats_df.groupby(['System', 'Execution Type',  'Input']).mean().reset_index()
    stats_df = stats_df.pivot(index=['System', 'Input'], columns='Execution Type', values='Execution time (s)').reset_index()
#    tmp = df.groupby(['System', 'Execution Type']).mean()['Execution time (s)'].reset_index() 
    print(stats_df)
    for u in unique_policies:
        stats_df[f'Speed Up {u}'] = stats_df['gpu']/stats_df[u] 

    for u in unique_policies:
        stats_df[u] = stats_df[f'Speed Up {u}']
        stats_df = stats_df.drop([f'Speed Up {u}'], axis=1)
    print(stats_df)
    stats_df['Benchmark'] = self._name
    stats_df.to_pickle(f'{self._name}.pkl')

    print(df)
    g = sns.relplot(data=df, x='N', y='Execution time (s)', 
            col='System', hue='Execution Type',
            markeredgecolor='black', 
            alpha=0.5, lw=0.1, kind='line', style='Execution Type',
            facet_kws={'sharey': False, 'sharex': True})
#    g.set(xscale="log")
#    g.set(yscale="log")
    plt.savefig(f'{outfile}_speedup.pdf')
    plt.close()

