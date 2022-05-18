import os
from bench_modules.benchmark import BaseBenchmark
import re

class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('amgmk')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    self._build = f'FOPENMP="{compile_flags}" make -f Makefile.adaptive'
    self._clean = 'make -f Makefile.adaptive clean'
    self._inputs = []
    for i in range(4, 12+1):
      self._inputs.append('%d %d %d'%(i*16, i*16, i*16))
    self._executable = f'AMGMk'

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
    exec_time_pattern = 'Wall time = (.*) seconds'
    tmp =  re.findall(exec_time_pattern, stdout)
    if len(tmp) == 0:
      return None
    return tmp[0]

  def extractInputFromCMD(self, cmd):
    return ','.join(cmd.split(' ')[1:])

  def visualize(self, df, outfile, sizes):
    import matplotlib
    import pandas as pd
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    fig, ax = plt.subplots(figsize=sizes)
    defThreads=256
    df['Input'] =  df['Input'].str.split(',', expand=True)[0]
    df['Input'] = df['Input'].astype(int)
    df = df[(df['Input'] > 4*16) & (df['Input'] < 12 * 16)]
    df = df.rename(columns={'Policy' : 'Num Team Threads'})
    df['Num Team Threads'] = (df['Num Team Threads'].str.split('_', expand=True))[1].astype(int)
    df = self.computeSpeedUpPerPolicy(df, 'Input')
    self.scatterplotPerPolicy(df, outfile, 'Input', sizes, r'Grid Size ($n^3$)', 'speedup')

    return

