import os
from bench_modules.benchmark import BaseBenchmark
import re

class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('Quicksilver')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    self._build = f'cd src; FOPENMP="{compile_flags}" make CC=clang CXX=clang++; cp qs ../; cd ..;'
    self._clean = 'cd src; make clean; cd ..'
    self._inputs = []
    start = 2
    ratio=2
    n = 11
    progression = [start * ratio**i for i in range(n)]
    initial_size = 8638400*8
    for i in progression:
      elements = int(initial_size / i)
      self._inputs.append(f'-N 10 --nParticles {elements}')
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
    exec_time_pattern = '__ExecutionTime__:(.*)'
    tmp =  re.findall(exec_time_pattern, stdout)[0]
    print(tmp, type(tmp))
    return tmp

  def extractInputFromCMD(self, cmd):
    tmp = cmd.split(' ')[-1]
    return tmp

