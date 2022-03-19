import os
from bench_modules.benchmark import BaseBenchmark
import re


class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('MD')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    self._build = f'FOPENMP="{compile_flags}" make'
    self._clean = 'make clean'
    self._inputs = []
    for s in range(int(12288/2),73729, int(12288/2)):
      for i in range(1,11):
          self._inputs.append(f'{s} {i}')
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
    cmd=':'.join(vals[1:4])
    return cmd

  def visualize(self, df, outfile, sizes):
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    fig, ax = plt.subplots(figsize=sizes)
    df[['Number of Atoms', 'Iterations']] = df['Input'].str.split(':', expand=True).astype(int)
    df['N'] = df['Number of Atoms'] * df['Iterations']
    g = sns.relplot(data=df, x='Iterations', y='Execution time (s)', col='System', row='Number of Atoms', hue='Policy', kind='line')
    g.set(xscale="log")
    g.set(yscale="log")
    plt.savefig(f'{outfile}')
    plt.close()
