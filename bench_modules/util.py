import subprocess
from pathlib import Path
from string import Template
import sys
import re

def convert_seconds_str(sec):
  return str(timedelta(seconds=int(sec)))

def convert_str_seconds(time_str):
  hh, mm, ss = time_str.split(':')
  return int(hh) * 3600 + int(mm) * 60 + int(ss)

def chunker_list(seq, size):
      return [seq[i::size] for i in range(size)]

def execute_command(cmd,**kwargs):
  p = subprocess.run( cmd, **kwargs )
  out = None
  err = None
  if 'capture_output' in kwargs and kwargs['capture_output']:
    out = str(p.stdout.decode('utf-8'))
    err = str(p.stderr.decode('utf-8'))
  return p.returncode, out,err

def createDir(path):
    testPath = Path(path)
    if testPath.exists():
        if not testPath.is_dir():
            print(f'Path already exists {path} and it is not a directory')
            sys.exit()
    else:
        testPath.mkdir(parents=True)
    return path

def createBatchScript(node_dir, workers_dirs, cmd, time='01:00:00'):
  worker_dirs_str=' '.join(workers_dirs)
  with open('batch_templates/distributeWorkIntall.batch', 'r') as fd:
    template = Template(fd.read())
  script = template.substitute(TIME=time, OUTDIR=node_dir, OUTPUT_DIRS=worker_dirs_str, CMD=cmd)
  with open(f'{node_dir}/job.batch', 'w') as fd:
    fd.write(script)
  return f'{node_dir}/job.batch'

def submitJob(script, num_cores, cores_per_task, dependencies=None):
    submitCmd = f'sbatch -N 1 -n {num_cores} -c {cores_per_task}'
    if dependencies != None:
        submitCmd += f' {dependencies}'
    submitCmd +=  f' {script}'
    code, out,err = execute_command(submitCmd)
    vals =  re.compile('Submitted batch job (\d+)').findall(out)
    if len(vals) != 1:
        print('Could Not Match Everything')
        print(out)
        print(err)
        sys.exit()
    jobId = int(vals[0])
    return jobId

