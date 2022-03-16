# Harness

The harness is an automated script to execute a user specified benchmark on the clusters. The
benchmark will be compiled with OpenMP offload flags. The system specific flags are forwarded by
the harness to the makefile/CMake through the 'FOPENMP' env variable. The harness
accepts a DSL benchmark specification under the root directory of the benchmark source code.

## Benchmark DSL 

Below you can view an example of the DSL of the VecAdd benchmark:

```python
import os
from bench_modules.benchmark import BaseBenchmark
import re

class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('VecAdd')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    self._build = f'FOPENMP="{compile_flags}" make'
    self._clean = 'make clean'
    self._inputs = [1, 2, 4, 8]
    self._executable = f'vecAdd'

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
    tmp =  re.findall(exec_time_pattern, stdout)[0]
    print(tmp, type(tmp))
    return tmp

  def extractInputFromCMD(self, cmd):
    return int(cmd.split(' ')[-1])
```

For each benchmark the user should specify all these member functions.
The most important one is the init function. Firstly, we need to provide 
a name to the benchmark, then we specify the root directory of the source code.
Since the bench\_descr.py DSL function is on the root directory of the benchmark
you can just copy the line. Then we need to specify the compilation command. 
In this case we invoke "make" with the FOPENMP env flags set. We also
set the "clean" command. Finally, we create a list of the benchmark input arguments.
Internally, the harness will perform the following code:


```python
for i in benchmark.inputs():
  invoke_cmd = f'{system.env_variables()} {benchmark.executable()} {i}'
  stdout, stderr = execute(invoke_cmd)
  executionTime = benchmark.getTime(stdout)
```

So, the harness iterates over all inputs it executes the benchmark and then
it forwards the stdout of the execution to the DSL. The DSL is required to
return the execution time of the run. The harness stores everythin in an internal
data base and continues to the next execution.

## Harness Execution

The harness accepts 4 arguments:

* -r 'directory' : The directory where the harness will store the results. The naming scheme used by the harness is the following 'directory'/systemName/benchName/. 

* -b BENCHMARK : the path to the root directory of the benchmark. The benchmark directory should contain the 'bench\_descr.py' file.

* -a {setup,map-reduce,execute,gather,visualize} : The action to perform by the harness. The 'setup' action compiles and creates the required result directory as well as the different experiment configurations. The 'map-reduce' checks which experiments have been performed and then automatically invokes a job to perform the remaining experiments. The 'execute' executes experiments on the system. Finally, the gather and the visualize gather the results of different system configurations and visualize them. To visualize them, one needs to further extend the benchmark description DSL file.

* -j JOB The number of jobs used to execute these experiments. 

The harness execution mode is inspired from farmer-worker plotocol. Workers execute experiments and the farmer gathers these experiments into the database and spawns new workers to execute the rest of the experiments. The process continues until all experiments are finished. Currently, if the 'getTime' function cannot return an item the entire script is operating as an infinite loop. Finally, to guarantee that all workes have finished their execution prior the execution of the Farmer the script uses job-dependencies to queue them one after the other. Workers can execute concurrently, while for a single benchmark/system there is up to one farmer running at any given time.

A typical way to execute the experiments is the following:
```python
./harness.py -r results/ -b hotspot3D-omp/ -a setup
./harness.py -r results/ -b hotspot3D-omp/ -a map-reduce
```

We first setup the experiments, and then we start the farmer on the login node. The farmer will 
spawn the workes on the compute nodes and then it will spawn a copy of the farmer as a dependent job. The login node farmer will exit and the the script will take care of the entire execution.



# Benchmarks

Where to find adaptive regions
* Quicksilver/src/main.cc

## Inputs of Benchmarks:

### Hotspot
  We investigate 3 input parameters, the number of layers, the size of the simulated box (we always consider width to be equal to height) and the number of layers.

### RSBench
  We investigate 2 input parameters, the number of look ups and the number of particles. The latter we can control only with a categorical variable (small, large) otherwise the code fails.

### XSBench
  We investigate 2 input parameters, the number of look ups and the number of particles. The latter we can control only with a categorical variable (small, large) otherwise the code fails. 

### Quicksilver
  We investigate only the number of time steps.

### Smith-Waterman
  We investigate the size of the simulated block. We always check cases where width = height
