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
    self._inputs = []
    for s in range(40,130, 10):
      self.inputs.append(f'-s {s}')

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
    import matplotlib
    import pandas as pd
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    fig, ax = plt.subplots(figsize=sizes)
    df['size'] = df['Input'].astype(int)
    df.loc[df['Execution Type'] =='Static', 'Execution Type'] = df.loc[df['Execution Type'] == 'Static', 'Policy']
    style_to_markers = {}
    g = sns.relplot(data=df, x='size', y='Execution time (s)',
                    col='System', hue='Execution Type',
                    markeredgecolor='black', 
                    alpha=0.5, lw=0.1, kind='line', style='Execution Type',
                    facet_kws={'sharey': False, 'sharex': True})
    axes = g.axes
    for r in g.axes:
        for c in r:
            c.set_yscale('log', base=2)
            c.yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
    print(axes.shape)
    g.set_axis_labels('Size', 'Execution time (s)\nlog2')
    #plt.gca().yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
    plt.tight_layout()
    plt.savefig(f'{outfile}')
    plt.close()


