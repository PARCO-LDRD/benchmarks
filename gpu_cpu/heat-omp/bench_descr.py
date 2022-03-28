import os
from bench_modules.benchmark import BaseBenchmark
import re

class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('heat')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    self._build = f'FOPENMP="{compile_flags}" make -f Makefile.adaptive'
    self._clean = 'make -f Makefile.adaptive clean'
    self._inputs = []
    for i in range(20, 32+1):
      self._inputs.append('%d 1000'%(i*512))
    self._executable = f'heat'

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
    exec_time_pattern = 'Solve time \(s\): (.*)\s'
    tmp =  re.findall(exec_time_pattern, stdout)[0]
    print(tmp, type(tmp))
    return tmp

  def extractInputFromCMD(self, cmd):
    return ','.join(cmd.split(' ')[1:])

  def visualize(self, df, outfile, sizes):
    import matplotlib
    import pandas as pd
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    fig, ax = plt.subplots(figsize=sizes)
    df['Input'] = df['Input'].str.split(',', expand=True)[0]
    df.loc[df['Execution Type'] =='Static', 'Execution Type'] = df.loc[df['Execution Type'] == 'Static', 'Policy']
    print(df)
    g = sns.relplot(data=df, x='Input', y='Execution time (s)',
                    col='System', hue='Execution Type', kind='line', marker='o',
                    facet_kws={'sharey': False, 'sharex': True})
    g.set_axis_labels('Size', 'Execution time (s)\nlog2')
    g.set_xticklabels(rotation=-90)
    plt.yscale('log', base=2)
    plt.gca().yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
    plt.tight_layout()
    plt.savefig(f'{outfile}')
    plt.close()
