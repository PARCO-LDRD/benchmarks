import os
from bench_modules.benchmark import BaseBenchmark
import re
import numpy as np

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
    feature_name = r'Grid Size ($n^3$)'
    df[feature_name] = df['Input'].str.split(',', expand=True)[0] 
    df[feature_name] = df[feature_name].astype(int)
    df = df[(df[feature_name] > 4*16) & (df[feature_name] < 12 * 16)]

    df.loc[df['Execution Type'] == 'Static', 'Execution Type'] = 'Static,' + df.loc[df['Execution Type'] == 'Static', 'Policy'].str.upper()
    self.heatmap(df, outfile, feature_name, sizes)
    df = self.computeSpeedup(df, feature_name) 
    self.scatterplot(df, outfile, feature_name, sizes, feature_name, 'speedup')
    return
