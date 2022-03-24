import os
from bench_modules.benchmark import BaseBenchmark
import re
import matplotlib

class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('hotspot3D')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    self._build = f'FOPENMP="{compile_flags}" make'
    self._clean = 'make clean'
    self._inputs = []
    iterations = [128, 256, 512, 1024, 2048, 4096]
    numCols = [64, 128, 256, 512]
    layers=[2,4,8]
    for i in iterations:
      for c in numCols:
        for l in layers:
          #Code operates the same as long as the input file has
          #enough information
          pfile = f'{self._root}/data/power_512x8'
          tfile = f'{self._root}/data/temp_512x8'
          command = f'{c} {l} {i} {pfile} {tfile}'
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
    cmd=':'.join(vals[1:4])
    return cmd

  def visualize(self, df, outfile, sizes):
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    fig, ax = plt.subplots(figsize=sizes)
    df[['Cols', 'Layers', 'Iterations']] = df['Input'].str.split(':', expand=True)
    df[['Cols', 'Layers', 'Iterations']] = df[['Cols', 'Layers', 'Iterations']].astype(int)
    df['N'] = df['Cols'] * df['Layers'] * df['Iterations']
    df['Execution time (s)'] = df['Execution time (s)']/1e6
    g = sns.relplot(data=df, x='N', y='Execution time (s)',
                    col='System', hue='Policy', kind='line', marker='o')
    g.set_axis_labels('N\nlog2', 'Execution time (s)\nlog2')
    plt.yscale('log', base=2)
    plt.xscale('log', base=2)
    plt.gca().yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
    plt.tight_layout()
    plt.savefig(f'{outfile}')
    plt.close()
