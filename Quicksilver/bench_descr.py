import os
from bench_modules.benchmark import BaseBenchmark
import re


class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('Quicksilver')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    if system.name != 'corona':
        self._build = f'cd src; FOPENMP="{compile_flags}" make CC=clang CXX=clang++ CUDA_LDFLAGS=' +'-"L${CUDA_HOME}/lib64/ -lcuda -lcudart"; cp qs ../; cd ..;'
    else:
        self._build = f'cd src; FOPENMP="{compile_flags}" make CC=clang CXX=clang++; cp qs ../; cd ..;'
    self._clean = 'cd src; make clean; cd ..'
    self._inputs = []
    for i in range(26620,319440,26620):
      self._inputs.append(f'--nParticles {i}')
      print(i)
    self._executable = f'qs'
    print(self._inputs)

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
    return tmp[0]

  def extractInputFromCMD(self, cmd):
    tmp = cmd.split(' ')[-1]
    return tmp

  def visualize(self, df, outfile, sizes):
    import pandas as pd
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    fig, ax = plt.subplots(figsize=sizes)
    print(df)
    g = sns.relplot(data=df, x='Input', y='Execution time (s)', col='System', hue='Policy', style='Policy', kind='line')
    plt.savefig(f'{outfile}')
    plt.close()

