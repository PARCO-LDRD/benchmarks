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
    self._inputs = ['-s 60', '-s 80', '-s 100']
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
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    fig, ax = plt.subplots(figsize=sizes)
    print('df', df)
    input('key...')
    df[['Type', 'lookups']] = df['Input'].str.split(':', expand=True)
    df['lookups'] = df['lookups'].astype(int)
    g = sns.relplot(data=df, x='lookups', y='Execution time (s)', col='System', hue='Policy', style='Type', kind='line')
    g.set(xscale="log")
    g.set(yscale="log")
    plt.savefig(f'{outfile}')
    plt.close()


