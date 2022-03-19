import os
from bench_modules.benchmark import BaseBenchmark
import re


class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('HACCMK')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    self._build = f'FOPENMP="{compile_flags}" make'
    self._clean = 'make clean'
    self._inputs = []
    outer_loop = range(400, 40000, 1600)
    for n in outer_loop:
      for ilp in range(n, 40000, 1600):
        self._inputs.append(f'{n} {ilp}')
    self._executable = f'haccmk'

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
    cmd=':'.join(vals[1:3])
    return cmd

  def visualize(self, df, outfile, sizes):
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    fig, ax = plt.subplots(figsize=sizes)
    df[['Outer', 'Inner']] = df['Input'].str.split(':', expand=True).astype(int)
    df['N'] = df['Outer'] * df['Inner']
    g = sns.relplot(data=df, x='N', y='Execution time (s)', col='System', hue='Policy', kind='line')
    g.set(xscale="log")
    g.set(yscale="log")
    plt.savefig(f'{outfile}')
    plt.close()

