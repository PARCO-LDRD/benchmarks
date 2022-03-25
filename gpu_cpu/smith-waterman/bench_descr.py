import os
import sys
from bench_modules.benchmark import BaseBenchmark
import re
import matplotlib

class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('SW')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    self._build = f'FOPENMP="{compile_flags}" make -f Makefile.adaptive'
    self._clean = 'make -f Makefile.adaptive clean'
    self._inputs = []
    #5000 x 5000 -> 30 000 30 000 , stride : 512
    for i in range(512, 15000,512):
      self._inputs.append(f'{i} {i}')
    self._executable = f'SW'

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
    return tmp[0]

  def extractInputFromCMD(self, cmd):
    vals=cmd.split(' ')
    cmd=':'.join(vals[1:3])
    return cmd

  def visualize(self, df, outfile, sizes):
    import pandas as pd
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    fig, ax = plt.subplots(figsize=sizes)
    df[['N', 'M']] = df['Input'].str.split(':', expand=True)
    df['N'] = df['N'].astype(int)
    df['Execution time (s)'] = df['Execution time (s)']/1e6
    g = sns.relplot(data=df, x='N', y='Execution time (s)',
                    col='System', hue='Policy', kind='line', marker='o',
                    facet_kws={'sharey':False, 'sharex':True})
    g.set_axis_labels('Size', 'Execution time (s)\nlog2')
    plt.yscale('log', base=2)
    plt.gca().yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
    plt.tight_layout()
    plt.savefig(f'{outfile}')
    plt.close()
