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
    dimX = [512, 1024, 2048, 3192, 4096, 5120, 6144, 7168, 8192]
    for x in dimX:
     command = f'100 {x} {x}'
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
    df[['Iterations', 'Height', 'Width']] = df['Input'].str.split(':', expand=True)
    df[['Iterations', 'Height', 'Width']] = df[['Iterations', 'Height', 'Width']].astype(int)
    df['Grid'] = df['Height']
    df['Grid'] = df['Height'] / 1000
    df = df.rename(columns={'Policy' : 'Num Team Threads'})
    df['Num Team Threads'] = (df['Num Team Threads'].str.split('_', expand=True))[1].astype(int)
    df = self.computeSpeedUpPerPolicy(df, 'Grid')
    self.scatterplotPerPolicy(df, outfile, 'Grid', sizes, r'Grid Size ($(n*1000)^2$)', 'speedup', setTitle=True, rotation=0)
    return
