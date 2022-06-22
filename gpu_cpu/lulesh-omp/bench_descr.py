import os
import numpy as np
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

  def computeAlternateSpeedup(self, df):
    import pandas as pd
    baseline = df[df['Execution Type'] == 'Static,GPU'].copy()
    baseline = baseline.groupby(['System', 'size']).mean().reset_index()
    df['Speedup'] = -1.0
    for s in baseline['System'].unique():
        for i in baseline['size'].unique():
            bs = baseline.loc[((baseline['System'] == s) & (baseline['size'] == i)), 'Execution time (s)'].values[0]
            df.loc[((df['System'] == s) & (df['size'] == i)),'Speedup'] = bs  / df.loc[((df['System'] == s) & (df['size'] == i)), 'Execution time (s)']
    df = df.drop(df[df['Execution Type'] =='Static,GPU'].index)
    return df

  def visualize(self, df, outfile, sizes):
    import matplotlib
    import pandas as pd
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    feature_name = r'Size'
    df[feature_name] = df['Input'].astype(int)
    df=df[df[feature_name] > 40]
    df.loc[df['Execution Type'] == 'Static', 'Execution Type'] = 'Static,' + df.loc[df['Execution Type'] == 'Static', 'Policy'].str.upper()
#    self.heatmap(df, outfile, feature_name, sizes, setTitle=True)
    self.choicemap(df, outfile, sizes, feature_name)
    df = self.computeSpeedup(df, feature_name) 
    self.scatterplot(df, outfile, feature_name, sizes, feature_name, 'Speedup', setTitle=True)



