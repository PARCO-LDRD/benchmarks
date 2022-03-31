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
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    fig, ax = plt.subplots(figsize=sizes)
    df[['Type', 'lookups']] = df['Input'].str.split(':', expand=True)
    df['lookups'] = df['lookups'].astype(int)
    df.loc[df['Execution Type'] =='Static', 'Execution Type'] = df.loc[df['Execution Type'] == 'Static', 'Policy']
    print(df)

    stats_df = df.copy(deep=True)
    unique_policies = stats_df['Execution Type'].unique()
    print(unique_policies)
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
    return


    g = sns.relplot(data=df, x='lookups', y='Execution time (s)', col='Type',
            row='System', hue='Policy', kind='line', facet_kws={'sharey': False,
                'sharex': True})
    g.set(xscale="log")
    g.set(yscale="log")
    plt.savefig(f'{outfile}')
    plt.close()

