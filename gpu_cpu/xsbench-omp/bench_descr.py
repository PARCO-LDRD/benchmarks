import os
from bench_modules.benchmark import BaseBenchmark
import re


class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('XSBench')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    self._build = f'FOPENMP="{compile_flags}" make'
    self._clean = 'make clean'
    self._inputs = []
    for size in ['small', 'large']:
      for i in [64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384]:
        lus = i * 5000
        in_args = f'-m event -s {size} -l {lus}'
        self._inputs.append(in_args)
    self._executable = f'XSBench'

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
    # convert from microseconds to seconds.
    return tmp[0]

  def extractInputFromCMD(self, cmd):
    vals=cmd.split(' ')
    return f'{vals[4]}:{vals[6]}'

  def visualize(self, df, outfile, sizes):
    import matplotlib
    import pandas as pd
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
#    fig, ax = plt.subplots(figsize=sizes)
    feature_name = 'Look Ups\n($log2$)'
    df[['Size', feature_name]] = df['Input'].str.split(':', expand=True)
    df = df[df['Size'] == 'large'] 
    df[feature_name] = df[feature_name].astype(int)
    df = df[df [feature_name] >= 256*5000]
    df.loc[df['Execution Type'] == 'Static', 'Execution Type'] = 'Static,' + df.loc[df['Execution Type'] == 'Static', 'Policy'].str.upper()
    self.heatmap(df, outfile, feature_name, sizes, logx=True)
    df = self.computeSpeedup(df, feature_name) 
    self.scatterplot(df, outfile, feature_name, sizes, feature_name, 'speedup', logx=True, ncol=2, legendPos=[0.55,0.7])
    return
