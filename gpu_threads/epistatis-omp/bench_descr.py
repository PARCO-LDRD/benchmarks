import os
from bench_modules.benchmark import BaseBenchmark
import re

class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('epistatis')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    self._build = f'FOPENMP="{compile_flags}" make -f Makefile.adaptive'
    self._clean = 'make -f Makefile.adaptive clean'
    # input: samples SNPs iterations
    self._inputs = []
    for i in range(1,8+1):
      self._inputs.append('100 %d 10'%(i*5000))
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
    exec_time_pattern = 'Total offloading time: (.*) sec'
    tmp =  re.findall(exec_time_pattern, stdout)[0]
    print(tmp, type(tmp))
    return tmp

  def extractInputFromCMD(self, cmd):
    return ','.join(cmd.split(' ')[1:])

  def visualize(self, df, outfile, sizes):
    import pandas as pd
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    fig, ax = plt.subplots(figsize=sizes)
    g = sns.relplot(data=df, x='Input', y='Execution time (s)', col='System', hue='Policy', kind='line')
    plt.savefig(f'{outfile}')
    plt.close()


