from dataclasses import dataclass
from bench_modules import util
from string import Template
import json
import re

@dataclass
class System:
  name: str
  #NUM NODES IS THE NUMBER OF NODES WE WILL DEPLOY
  #UNLESS APPLICATION IS USING MPI STICK 1
  num_nodes: int
  num_cores: int
  scheduler: str
  system_compile_flags: str

  def __post_init__(self):
    if self.scheduler == 'slurm':
      print('I need to create object for scheduler')
    elif self.scheduler == 'lsf':
      print('I need to create lsf scheduler')
    else:
      print('Scheduler not supported')
      sys.exit()

  def get_parallel_cmd(self):
    return f'OMP_NUM_THREADS={self.num_cores} OMP_PROC_BIND=close OMP_PLACES=cores'

  def get_compile_flags(self):
    return self.system_compile_flags

  def dispatch_node(self, node_id, log_path, sbatch_path, cmd, time='02:00:00', job_name=None, dependencies=None):
    if self.scheduler == 'slurm':
      with open('batch_templates/slurm_template.batch', 'r') as fd:
        template = Template(fd.read())
    elif self.scheduler == 'lsf':
      seconds = util.convert_str_seconds(time)
      time = str(int(seconds / 60))
      with open('batch_templates/lsf_template.batch', 'r') as fd:
        template = Template(fd.read())

    script = template.substitute(TIME=time, LOGDIR=log_path, EXP=node_id, CMD=cmd)

    with open(f'{sbatch_path}/{node_id}.batch', 'w') as fd:
      fd.write(script)

    if self.scheduler == 'slurm':
      dispatch_cmd = f'sbatch -N {self.num_nodes} -c {self.num_cores}'
    elif self.scheduler == 'lsf':
      dispatch_cmd = f'bsub -nnodes {self.num_nodes} -env "all" --private-launch'

    if not isinstance(dependencies, type(None)):
      if self.scheduler == 'slurm':
        job_id=','.join([str(j) for j in dependencies])
        dependencies = f'--dependency=afterany:{job_id}'
        dispatch_cmd += f' {dependencies}'
      elif self.scheduler == 'lsf':
        job_id= '&&'.join([f'ended({j})' for j in dependencies])
        dependencies = f'-w \'{job_id}\''
        dispatch_cmd += f' {dependencies}'

    if not isinstance(job_name, type(None)):
      dispatch_cmd += f' -J {job_name}'

    dispatch_cmd += f' {sbatch_path}/{node_id}.batch'
    print(dispatch_cmd)

    code, out,err = util.execute_command(dispatch_cmd,capture_output=True, shell=True)
    if self.scheduler == 'slurm':
      vals =  re.compile('Submitted batch job (\d+)').findall(out)
    elif self.scheduler == 'lsf':
      vals =  re.compile('Job <(\d+)> is submitted').findall(out)

    if len(vals) != 1:
        print('Could Not Match Everything')
        print(out)
        print(err)
        sys.exit()
    jobId = int(vals[0])
    return jobId

  @classmethod
  def from_json(cls, path):
    with open(path, 'r') as fd:
      system = json.load(fd)
    return cls(**system)

