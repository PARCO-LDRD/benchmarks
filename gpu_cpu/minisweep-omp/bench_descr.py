import os
from bench_modules.benchmark import BaseBenchmark
import re
import matplotlib

class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('minisweep')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    self._build = f'FOPENMP="{compile_flags}" make -f Makefile.adaptive'
    self._clean = 'make clean'
    self._inputs = [
        '--niterations 1 --ncell_x 4 --ncell_y 4 --ncell_z 64 --ne 64 --na 32 --nblock_z 64',
        '--niterations 1 --ncell_x 8 --ncell_y 8 --ncell_z 64 --ne 64 --na 32 --nblock_z 64',
        '--niterations 1 --ncell_x 16 --ncell_y 16 --ncell_z 64 --ne 64 --na 32 --nblock_z 64',
        '--niterations 1 --ncell_x 32 --ncell_y 32 --ncell_z 64 --ne 64 --na 32 --nblock_z 64',
        '--niterations 1 --ncell_x 64 --ncell_y 64 --ncell_z 64 --ne 64 --na 32 --nblock_z 64',
        ]
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
    exec_time_pattern = '.*PASS\s+time: (.*) GF.*'
    tmp =  re.findall(exec_time_pattern, stdout)[0]
    print(tmp, type(tmp))
    return tmp

  def extractInputFromCMD(self, cmd):
    print(cmd)
    tmp = cmd.split(' ')
    data = int(tmp[4])
    return data

  def visualize(self, df, outfile, sizes):
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    fig, ax = plt.subplots(figsize=sizes)
    df['ncell_x/y/z'] = df['Input'].astype(int)
    g = sns.relplot(data=df, x='ncell_x/y/z', y='Execution time (s)',
                    col='System', hue='Policy', kind='line', marker='o',
                    facet_kws={'sharey':False, 'sharex':True})
    g.set_axis_labels('ncell x/y/z', 'Execution time (s)\nlog2')
    plt.yscale('log', base=2)
    plt.gca().yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
    plt.tight_layout()
    plt.savefig(f'{outfile}')
    plt.close()
