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
    dimX = [64, 128, 256, 512]
    dimY = [64, 128, 256, 512]
    for x in dimX:
      for y in dimY:
        command = f'10000 {x} {y}'
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
    markers = ['D', '^', 's']
    style_to_markers = {}
    for k, v in zip(sorted(df['Policy'].unique()), markers):
        style_to_markers[k] = v
    g = sns.relplot(data=df, x='N', y='Execution time (s)', 
            col='System', hue='Policy',
            markers=style_to_markers, markeredgecolor=None, 
            alpha=0.5, lw=0.1, kind='line', style='Policy',
            facet_kws={'sharey': False, 'sharex': True})
#    g.set(xscale="log")
#    g.set(yscale="log")
    plt.savefig(f'{outfile}')
    plt.close()

