#!/usr/bin/env python3

import os
import shutil
import sys
script = os.path.dirname(os.path.realpath(__file__))
sys.path.append(script)
import bench_modules
from bench_modules import util
from bench_modules import jobScheduler
import argparse
import socket
import subprocess
import json
import hashlib
from importlib import import_module
import re
import glob
import csv

textWidth=505.89

tex_fonts = {
# Use LaTeX to write all text
"text.usetex": True,
"font.family": "serif",
# Use 10pt font in plots, to match 10pt font in document
"axes.labelsize": 8,
"font.size": 8,
# Make the legend/label fonts a little smaller
"legend.fontsize": 6,
"xtick.labelsize": 8,
"ytick.labelsize": 8
}


def set_size(width, fraction=1, heigh_scale = 1):
    """Set figure dimensions to avoid scaling in LaTeX.
    Parameters
    ----------
    width: float
    Document textwidth or columnwidth in pts
    fraction: float, optional
    Fraction of the width which you wish the figure to occupy
    Returns
    -------
    fig_dim: tuple
    Dimensions of figure in inches
    """
    # Width of figure (in pts)
    fig_width_pt = width * fraction
    # Convert from pt to inches
    inches_per_pt = 1 / 72.27
    # Golden ratio to set aesthetic figure height
    # https://disq.us/p/2940ij3
    golden_ratio = (5**.5 - 1) / 2
    # Figure width in inches
    fig_width_in = fig_width_pt * inches_per_pt
    # Figure height in inches
    fig_height_in = heigh_scale *fig_width_in * golden_ratio
    fig_dim = (fig_width_in, fig_height_in)
    return fig_dim




def pack(e, bench):
  # unpack assumes single region 
  # runs
  for k,v in e['regions'].items():
    region = k
    policy = v['policy']
  micros = float(e['measured'])
  eId = e['repeat']
  expInput = bench.extractInputFromCMD(e['cmd'])
  return [region, policy, expInput, eId, micros]

def compile(bench):
  #clean previous build 
  print(bench.root)
  print(bench.clean)
  print(bench.build)
  util.execute_command(bench.clean, capture_output=False, cwd=bench.root, shell=True)
  #build new binary 
  code, out, err = util.execute_command( bench.build, capture_output=True, cwd=bench.root, shell=True )
  return (out,err)

def get_apollo_regions_variants( compile_err ):
  regions = {}
  model_pattern= 'ModelName is:(.*)'
  tmp =  set(re.findall(model_pattern, compile_err))
  print(tmp)
  l = []
  for k in tmp:
    variant_pattern=f'Declare Variant:__omp_adaptation_variant_{k}_(.*)'
    variants = set(re.findall(variant_pattern, compile_err))
    regions[k]= [None] * len(variants)
    for s in variants:
      v = s.split(':')
      regions[k][int(v[1])] = [v[0], int(v[1])]
    l.append(len(regions[k]))
  print(regions)

  if ( len(set(l)) != 1 ):
    print('Currently we are supporting only same size regions')
    sys.exit(-1)

  for k,v in regions.items():
    regions[k] = list(v)
  return regions

def setup_directories(root):
  os.makedirs(root, exist_ok=True)
  subdirs = ['bin', 'runs', 'node_tmps']
  for sd in subdirs:
    os.makedirs(f'{root}/{sd}', exist_ok=True)
  return

def reduce_partial_results(data, bench):
  pending_experiments = []
  experiments = data['experiments']
  root_dir = data['root_dir']
  for e in experiments:
    if e['executed']:
      continue

    hs=e['hash']
    # Check if we have executed the experiment
    exp_dir = f'{root_dir}/runs/{hs}/'

    if not (os.path.isdir(exp_dir)):
      pending_experiments.append(e)
      continue

    if not (os.path.exists(e['stdout'])):
      pending_experiments.append(e)
      continue

    if e['type'] == 'csv' and (not (os.path.isdir(f'{exp_dir}/trace/'))):
      pending_experiments.append(e)
      continue

    if e['type'] == 'Application Time':
      with open ( e['stdout'], 'r') as fd:
        print(e['stdout'])
        stdout = fd.read()
        executionTime = bench.getTime(stdout)
        if executionTime is None:
          pending_experiments.append(e)
          continue
        e['measured'] = executionTime
    print('Exeperiment ', exp_dir, ' finished', e['type'])
    e['executed'] = True

  data['experiments'] = experiments
  with open(f'{root_dir}/scenaria.json', 'w') as fd:
    json.dump(data, fd, indent=4)

  return pending_experiments

def createStaticRuns(root_dir, bench, regions, space, repeats):
  scenario = []
  static_regions = regions[list(regions.keys())[0]]
  max_policies = -1
  execTypes = [ { 'type' : 'csv', 'apollo_env' : { 'APOLLO_POLICY_MODEL' : 'Static,policy={}', 'APOLLO_TRACE_CSV' : '1'}, 'repeats' : 1 },
                { 'type' : 'Application Time', 'apollo_env' : { 'APOLLO_POLICY_MODEL' : 'Static,policy={}'}, 'repeats' : repeats }]
  for k, v in regions.items():
    if max_policies < len(v):
      max_policies = len(v)

  for i in space:
    for e in execTypes:
      for r in range(e['repeats']):
        for policy in range(max_policies):
            app_region = {}
            code = '|'
            for k, v in regions.items():
              app_region[k]= {}
              code+= '|' + k
              app_region[k]['policy'] = v[policy % len(v)][0]
              code+= '|'  + app_region[k]['policy']
              app_region[k]['execution_time'] = []
            code += '|'

            tmp = {
                'cmd' : f'{root_dir}/bin/{bench.executable} {i}',
                'repeat': str(r),
                'executed': False,
                'regions' : app_region,
                'type' : e['type']
                }
            code += tmp['cmd'] + tmp['repeat'] + tmp['type']
            hs = hashlib.sha256(code.encode('utf-8')).hexdigest()
            tmp['stdout'] = f'{root_dir}/runs/{hs}/stdout.txt'
            tmp['stderr'] = f'{root_dir}/runs/{hs}/stderr.txt'
            tmp['hash'] = hs
            tmp['apollo_env'] = {}
            for k,v in e['apollo_env'].items():
              tmp['apollo_env'][k] = v.format(policy)
            scenario.append(tmp)
  scenarios = f'{root_dir}/scenaria.json'
  if (os.path.exists(scenarios)):
    with open(scenarios, 'r') as fd:
      experiments = json.load(fd)['experiments']
      hashes = []
      for e in experiments:
        hashes.append(e['hash'])

      deletions = []
      for s in list(scenario):
        if s['hash'] in hashes:
          scenario.remove(s)
        else:
          experiments.append(s)
      scenario = experiments


  campaign_descr= { 'root_dir' : root_dir,
                    'experiments': scenario }

  with open(scenarios, 'w') as fd:
    json.dump(campaign_descr, fd,indent=4)

def execute_experiment(root,system,e):
  if e['executed']:
    return

  hs = e['hash']
  os.makedirs(f'{root}/runs/{hs}', exist_ok=True)

  apollo_env = ''
  cmd = e['cmd']
  for k,v in e['apollo_env'].items():
    apollo_env += f'{k}={v} '
  cmd = f'{system.get_parallel_cmd()} {apollo_env} {cmd}'
  print(e['type'], cmd)
  code, out, err = util.execute_command( cmd, cwd=f'{root}/runs/{hs}', capture_output=True,  shell=True )

  with open(e['stdout'], 'w') as fd:
    fd.write(out)

  with open(e['stderr'], 'w') as fd:
    fd.write(err)

def main():
  parser = argparse.ArgumentParser(description='Spack installer which exploits clusters to install pkgs and keep statistics')
  parser.add_argument('-r', '--results-dir', dest='results_dir', type=str, help='root directory to store all data', required=True)
  parser.add_argument('-b', '--benchmark', dest='benchmark', type=str, help='Directory containing benchmark to execute', required=True)
  parser.add_argument('-a', '--action', dest='action', type=str.lower, choices=('setup', 'map-reduce', 'execute', 'gather', 'visualize'), help='Action to be performed by the script', required=True)
  parser.add_argument('-j', '--jobs', dest='job', type=str, help='Number of maximum instances/jobs per benchmark', required=True)
  parser.add_argument('-t', '--disable-traverse-states', action='store_false', dest='traverse')
  parser.add_argument('-f', '--first-element', dest='first', type=int, help='Give index of the first worker item')
  parser.add_argument('-l', '--last-element', dest='last', type=int, help='Give index of the last worker item')
  parser.add_argument('-d', '--dry-run', dest='fake', type=int, help='Do not deploy jobs, just create everything and print command', default=0)

  args = parser.parse_args()
  host = "".join(filter(lambda x: not x.isdigit(), socket.gethostname()))
  print("Host is ", host)
  systemDescr = f'{os.path.dirname(os.path.realpath(__file__))}/systems/{host}.json'
  print (systemDescr)

  bench_path = args.benchmark
  analysis_dir = os.path.realpath(args.results_dir)
  sys.path.append(bench_path)
  benchClass = getattr(import_module('bench_descr'), 'Benchmark')
  system = jobScheduler.System.from_json(systemDescr)
  bench = benchClass(system)
  experiment_root_dir = f'{analysis_dir}/{host}/{bench.name}'
  print(experiment_root_dir)

  if args.action == 'setup':
    out, err = compile(bench)
    print(out)
    regions = get_apollo_regions_variants( err )
    setup_directories(experiment_root_dir)
    createStaticRuns(experiment_root_dir, bench, regions, bench.inputs, 5)
    shutil.copy(f'{bench.root}/{bench.executable}', f'{experiment_root_dir}/bin/')

  elif args.action == 'map-reduce':
    with open(f'{experiment_root_dir}/scenaria.json', 'r') as fd:
      experiments = json.load(fd)

    pending_experiments ={}
    pending_experiments['root_dir'] = experiments['root_dir']
    pending_experiments['experiments'] = reduce_partial_results(experiments, bench)

    with open(f'{experiment_root_dir}/pending_experiments.json', 'w') as fd:
      json.dump(pending_experiments,fd, indent=4)

    total_work = len (pending_experiments['experiments'])
    print(f'Total work is : {total_work}')
    if total_work == 0:
      return

    experiments_per_worker = int(total_work/ int(args.job)) + int((total_work % int(args.job)) != 0)
    print(f'Experiments per job {experiments_per_worker}')
    jobs = []
    for i in range(0,int(args.job)):
      start = i * experiments_per_worker
      last = (i+1)*experiments_per_worker
      cmd=f'{sys.argv[0]} -r {args.results_dir} -b {args.benchmark} -a execute -j {args.job}'
      cmd += f' -f {start} -l {last}'
      if not args.fake:
        jId = system.dispatch_node(f'node_{i}', f'{experiment_root_dir}/node_tmps/',f'{experiment_root_dir}/node_tmps/', cmd, '01:00:00', f'{bench.name}_{start}_{last}')
        jobs.append(jId)
      print(cmd)
    cmd=f'{sys.argv[0]} -r {args.results_dir} -b {args.benchmark} -a map-reduce -j {args.job}'
    print(cmd)
    if not args.fake:
      system.dispatch_node(f'master', f'{experiment_root_dir}/node_tmps/',f'{experiment_root_dir}/node_tmps/', cmd, '00:20:00', f'{bench.name}_master', jobs)
    return

  elif args.action == 'execute':
    if args.last is None or args.first is None:
      print('Execute requires first and last index')
      sys.exit(-1)
    experiments = None
    with open(f'{experiment_root_dir}/pending_experiments.json', 'r') as fd:
      experiments = json.load(fd)

    if experiments is None or 'experiments' not in experiments:
      print('Experiment file does not exist')
      sys.exit()

    experiments=experiments['experiments'][args.first:min(args.last,len(experiments['experiments']))]
    print(len(experiments))
    for e in experiments:
      execute_experiment(experiment_root_dir,system,e)

  elif args.action == 'gather':
    import pandas as pd
    pd.set_option('display.max_rows', None)
    packed_exp = []
    for d in glob.glob(f'{args.results_dir}/*/{bench.name}/'):
      system_name = d.split('/')[-3]
      print(system_name)
      with open(f'{d}/scenaria.json','r') as fd:
        experiments = json.load(fd)

      pending = reduce_partial_results(experiments, bench)
      if len(pending) != 0:
        print (f'Skipping {system_name}')
        continue
      for e in experiments['experiments']:
        if e['type'] == 'Application Time':
          print(e)
          packed = pack(e, bench)
          packed_exp.append([system_name] + packed)
    columns = ['System', 'Region',  'Policy','Input', 'Id', 'Execution time (micro-seconds)']
    df = pd.DataFrame(packed_exp, columns=columns)
    print(df)
    print(df.groupby(['System', 'Region',  'Policy','Input']).mean())
    df.to_json(f'{args.results_dir}/{bench.name}_gathered.json')

  elif args.action == 'visualize':
    import pandas as pd
    pd.set_option('display.max_rows', None)
    data = f'{args.results_dir}/{bench.name}_gathered.json'
    df = pd.read_json(data)
    df['Execution time (s)'] = df['Execution time (micro-seconds)'] / 1000000
    sizes=set_size(width=textWidth)
    bench.visualize(df, f'{args.results_dir}/{bench.name}.pdf', sizes)
    print(df)


if __name__ == '__main__':
  main()
  sys.exit()

