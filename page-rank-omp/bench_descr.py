import os
from bench_modules.benchmark import BaseBenchmark
import re


class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('PageRank')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    self._build = f'FOPENMP="{compile_flags}" make'
    self._clean = 'make clean'
    self._inputs = []
    iterations = range(1,20,2)
    numPages = range(400,20001,200)
    for i in iterations:
      for n in numPages:
        self._inputs.append(f'-n {n} -i {iterations}')
    self._executable = f'page-rank'

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
    cmd=':'.join([vals[2],vals[4]])
    return cmd

  def visualize(self, df, outfile, sizes):
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    fig, ax = plt.subplots(figsize=sizes)
    df[['Cols', 'Layers', 'Iterations']] = df['Input'].str.split(':', expand=True)
    df[['Cols', 'Layers', 'Iterations']] = df[['Cols', 'Layers', 'Iterations']].astype(int)
    df['N'] = df['Cols'] * df['Layers'] * df['Iterations']
    g = sns.relplot(data=df, x='N', y='Execution time (s)', col='System', hue='Policy', kind='line')
    g.set(xscale="log")
    g.set(yscale="log")
    plt.savefig(f'{outfile}')
    plt.close()

