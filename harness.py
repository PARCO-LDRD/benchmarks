#!/usr/bin/env python3

import os
import math
import shutil
import sys
script = os.path.dirname(os.path.realpath(__file__))
sys.path.append(script)
import bench_modules
from bench_modules import util
from bench_modules import jobScheduler
from bench_modules import apollo_dynamic
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

def extract_execution_policy(csv_path, index):
#  index=1
  with open(csv_path,'r') as fd:
    data = fd.readlines()
    header = data[0]
    r_index = -1
    policy_index = -1
    for i,v in enumerate(header.split(' ')):
      if v == 'region':
        r_index = i
      if v == 'policy':
        policy_index = i
    data = data[index].split(' ')
    return (data[r_index], int(data[policy_index]))

def pack(e, regions, bench, csv_files):
  policies=[]
  exec_type='Static'
  policy_index = 1
  prefix=''
  if 'Dynamic' in e['type'] or 'Adaptive' in e['type'] or 'Online' in e['type']:
    cmd = e['cmd']
    if 'Dynamic' in e['type']:
      exec_type='Oracle'
      csv_path= csv_files['Dynamic'][e['g_hash']]['stdout'].replace('stdout.txt','')
      prefix='trace-DecisionTree,load-dataset-region'
    elif 'Adaptive' in e['type']:
      exec_type='Adaptive'
      for k,v in e['regions'].items():
        percentage = v["policy"]
        perc = int(float(percentage.split(':')[1])*100)
        exec_type = f'Adaptive-{perc}'
      csv_path= csv_files['Adaptive'][e['g_hash']]['stdout'].replace('stdout.txt','')
      prefix='trace-DecisionTree,load-dataset-region'
    elif 'Online' in e['type']:
      exec_type='Online'
      max_policies = -1
      for k, v in regions.items():
        if max_policies < len(v):
          max_policies = len(v)
         #skip csv header and go to the next line
        policy_index = 1 + max_policies
      csv_path= csv_files['Online'][e['g_hash']]['stdout'].replace('stdout.txt','')
      prefix='trace-DecisionTree-region'
    for k,v in e['regions'].items():
      region = k
      if (str(k)) == 'NaN':
        print("\n")
        print(region)
        print("\n")
        print(k)
        print("\n")
        print(e)
        print('Skipping')
        continue
      trace_file =f'{csv_path}/trace/{prefix}-{k}-rank-0.csv'
      region_name, policy_id = extract_execution_policy(trace_file, policy_index)
      if k != region_name:
        raise RuntimeError('Region Names do not match (csv VS binary region names)')
      policy_name = regions[k][policy_id][0]
      policies.append(policy_name)
    policy = policies[0]
    if len(policies) != 1:
      policy = 'varies'
  else:
    for k,v in e['regions'].items():
      region = k
      policy = v['policy']
  micros = float(e['measured'])
  eId = e['repeat']
  expInput = bench.extractInputFromCMD(e['cmd'])
#  if e['hash'] == 'f92bbbe2830270403447f8e91e3e868b947e013923e1b21d03547aa8342ff0cd':
#    print('Temperature', [csv_path,prefix, region, exec_type, policy, expInput, eId, micros])
#    input()
#  print [ region, exec_type, policy, expInput, eId, micros]
  return [ region, exec_type, policy, expInput, eId, micros]

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

    if 'csv' in e['type']:
        if (not (os.path.isdir(f'{exp_dir}/trace/'))):
            pending_experiments.append(e)
            continue
        else:
            should_continue=False
            for fn in glob.glob(f'{exp_dir}/trace/*.csv'):
                print(fn)
                with open(fn, 'r') as fd:
                    csv_data = fd.readlines()
                    if len(csv_data) <2:
                        print('Experiment did not finish:', exp_dir)
                        pending_experiments.append(e)
                        should_continue = True
                        continue
            if should_continue:
                continue

    if 'Application Time' in e['type']:
      with open ( e['stdout'], 'r') as fd:
        stdout = fd.read()
        print(e['stdout'])
        executionTime = bench.getTime(stdout)
        if executionTime is None:
          pending_experiments.append(e)
          print('Execution time is None', e['stdout'])
          continue
        e['measured'] = executionTime
    print('Exeperiment ', exp_dir, ' finished', e['type'])
    e['executed'] = True

  data['experiments'] = experiments
  with open(f'{root_dir}/scenaria.json', 'w') as fd:
    json.dump(data, fd, indent=4)

  return pending_experiments

def append_to_scenarios(root_dir, scenario):
  scenarios = f'{root_dir}/scenaria.json'
  if (os.path.exists(scenarios)):
    already_performed=0
    pending = 0
    db_size = 0
    with open(scenarios, 'r') as fd:
      experiments = json.load(fd)['experiments']
      db_size = len(experiments)
      hashes = []
      for e in experiments:
        hashes.append(e['hash'])

      for s in list(scenario):
        if s['hash'] in hashes:
          already_performed += 1
          scenario.remove(s)
        else:
          pending+= 1
          experiments.append(s)
      return experiments
  return scenario

def createDynamicRuns(root_dir, space, repeats, exec_type='Dynamic'):
  execTypes = [ { 'type' : f'{exec_type} csv',
                  'apollo_env' : {  'APOLLO_TRACE_CSV' : '1',
                                    'APOLLO_POLICY_MODEL' : 'DecisionTree,load-dataset',
                                    'repeats' : 1
                                    },
                  'repeats' : 1 },
                { 'type' : f'{exec_type} Application Time',
                  'apollo_env' : { 'APOLLO_POLICY_MODEL' : 'DecisionTree,load-dataset' },
                  'repeats' : repeats }
             ]
  dynamic_scenario = []
  for ds in space:
    for e in execTypes:
      for r in range(0,e['repeats']):
        exp = dict(ds)
        code=''
        for k,v in exp['regions'].items():
          if isinstance(k, str):
            code += '|' + k
            code += '|' + v['policy']
            code += '|' + v['model_hash']
        code += '|'
        exp['repeat'] = str(r)
        exp['executed'] = False
        exp['type'] = e['type']
        code += exp['cmd'] + exp['repeat'] + exp['type']
        hs = hashlib.sha256(code.encode('utf-8')).hexdigest()
        exp['stdout'] = f'{root_dir}/runs/{hs}/stdout.txt'
        exp['stderr'] = f'{root_dir}/runs/{hs}/stderr.txt'
        exp['hash'] = hs
        exp['apollo_env'] = {}
        for k,v in e['apollo_env'].items():
          exp['apollo_env'][k] = v
        dynamic_scenario.append(exp)
  print('Dynamic Scenaria are ', len(dynamic_scenario))
  scenario_db = f'{root_dir}/scenaria.json'
  scenario = append_to_scenarios(root_dir, dynamic_scenario)

  campaign_descr= { 'root_dir' : root_dir,
                    'experiments': scenario}

  with open(scenario_db, 'w') as fd:
    json.dump(campaign_descr, fd,indent=4)


def createOnlineRuns(root_dir, bench, regions, space, repeats):
  scenario = []
  static_regions = regions[list(regions.keys())[0]]
  max_policies = -1
#  APOLLO_TRACE_CSV=1 APOLLO_POLICY_MODEL=DecisionTree APOLLO_PER_REGION_TRAIN_PERIOD=6
  for k, v in regions.items():
    if max_policies < len(v):
      max_policies = len(v)

  execTypes = [ { 'type' : 'Online csv', 'apollo_env' : {
                                'APOLLO_POLICY_MODEL' : 'DecisionTree',
                                'APOLLO_TRACE_CSV' : '1',
                                'APOLLO_PER_REGION_TRAIN_PERIOD' : f'{max_policies}'
                                }, 'repeats' : 1},
                { 'type' : 'Online Application Time', 'apollo_env' : {
                                'APOLLO_POLICY_MODEL' : 'DecisionTree',
                                'APOLLO_PER_REGION_TRAIN_PERIOD' : f'{max_policies}'
                }, 'repeats' : repeats }]


  for i in space:
    for e in execTypes:
      for r in range(e['repeats']):
          app_region = {}
          code = '|'
          for k, v in regions.items():
            app_region[k]= {}
            code+= '|' + k
            app_region[k]['policy'] = f'Online:{r}'
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
            tmp['apollo_env'][k] = v
          scenario.append(tmp)
  scenario_db = f'{root_dir}/scenaria.json'
  scenario = append_to_scenarios(root_dir, scenario)

  campaign_descr= { 'root_dir' : root_dir,
                    'experiments': scenario}

  with open(scenario_db, 'w') as fd:
    json.dump(campaign_descr, fd,indent=4)


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
  scenario_db = f'{root_dir}/scenaria.json'
  scenario = append_to_scenarios(root_dir, scenario)

  campaign_descr= { 'root_dir' : root_dir,
                    'experiments': scenario}

  with open(scenario_db, 'w') as fd:
    json.dump(campaign_descr, fd,indent=4)

def execute_experiment(root,system,e):
  if e['executed']:
    return


  hs = e['hash']
  os.makedirs(f'{root}/runs/{hs}', exist_ok=True)
  print(f'{root}/runs/{hs}')
  cwd_dir = f'{root}/runs/{hs}'


#I need to go and create yaml file
  if 'Dynamic' in e['type'] or 'Adaptive' in e['type']:
    scratch = system.get_scratch()
    scratch_exp = f'{scratch}/{hs}/'
    os.makedirs(f'{scratch_exp}', exist_ok=True)
    cwd_dir = scratch_exp
    os.makedirs(f'{root}/runs/{hs}', exist_ok=True)
    for k, v in e['regions'].items():
      with open(f'{scratch_exp}/Dataset-{k}.yaml', 'w') as fd:
        fd.write(v['model'])
    print(f"cwd_dir is {cwd_dir}")

  apollo_env = ''
  cmd = e['cmd']
  for k,v in e['apollo_env'].items():
    apollo_env += f'{k}={v} '
  cmd = f'{apollo_env} {system.get_parallel_cmd()} {cmd}'
  print(e['type'], cmd)
  code, out, err = util.execute_command( cmd, cwd=cwd_dir, capture_output=True,  shell=True )

  with open(e['stdout'], 'w') as fd:
    fd.write(out)

  with open(e['stderr'], 'w') as fd:
    fd.write(err)

#I need to delete directory cause I am using shmem.
  if 'Dynamic' in e['type'] or 'Adaptive' in e['type']:
    if "csv"in e['type']:
      shutil.copytree(f'{scratch}/{hs}/trace/', f'{root}/runs/{hs}/trace/')
      print(f'Copied file from {scratch}/{hs}/trace/ to {root}/runs/{hs}/trace/')
    shutil.rmtree(f'{scratch}/{hs}/')

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
  parser.add_argument('-R', '--Repeats', dest='repeats', type=int, help='Number of repetitions of each experiment', default=5)
  parser.add_argument('-e', '--experiment-type', dest='type', type=str.lower, choices=('static', 'adaptive', 'oracle', 'online'),  help='Perform static or dynamic runs', default='static')

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
    setup_directories(experiment_root_dir)
    shutil.copy(f'{bench.root}/{bench.executable}', f'{experiment_root_dir}/bin/')
    if args.type == 'static':
      print(out)
      regions = get_apollo_regions_variants( err )
      createStaticRuns(experiment_root_dir, bench, regions, bench.inputs, args.repeats)
    else:
      with open(f'{experiment_root_dir}/scenaria.json', 'r') as fd:
        experiments = json.load(fd)
      roi = []
      if args.type == 'adaptive':
        adaptive_exp = []
        for i in range(1,10,1):
          for f in [0.25, 0.5, 0.75]:
            adaptive_exp += apollo_dynamic.get_adaptive_apollo_runs(experiments,percentage=f, state=i)
        unique = {}
        print(f'Len of experiments are {len(adaptive_exp)}')
        createDynamicRuns(experiment_root_dir, adaptive_exp, 1, 'Adaptive')

      if args.type == 'oracle':
        dSpace = apollo_dynamic.get_oracle_apollo_runs(experiments)
        createDynamicRuns(experiment_root_dir, dSpace, args.repeats, 'Dynamic')

      if args.type == 'online':
        regions = get_apollo_regions_variants( err )
        createOnlineRuns(experiment_root_dir, bench, regions, bench.inputs, args.repeats)

  elif args.action == 'map-reduce':
    with open(f'{experiment_root_dir}/scenaria.json', 'r') as fd:
      experiments = json.load(fd)

    pending_experiments ={}
    pending_experiments['root_dir'] = experiments['root_dir']
    total_work_before = len(experiments['experiments'])
    pending_experiments['experiments'] = reduce_partial_results(experiments, bench)

    with open(f'{experiment_root_dir}/pending_experiments.json', 'w') as fd:
      json.dump(pending_experiments,fd, indent=4)

    total_work = len (pending_experiments['experiments'])
    print(f'Pending work is : {total_work} out of {total_work_before}')
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
    out, err = compile(bench)
    regions = get_apollo_regions_variants( err )
    pd.set_option('display.max_rows', None)
    packed_exp = []
    for d in glob.glob(f'{args.results_dir}/*/{bench.name}/'):
      system_name = d.split('/')[-3]
      print(system_name)
      print(f'{d}/scenaria.json')

      if not (os.path.exists(f'{d}/scenaria.json')):
        continue

      with open(f'{d}/scenaria.json','r') as fd:
        experiments = json.load(fd)

      pending = reduce_partial_results(experiments, bench)
      if len(pending) != 0:
        print (f'Skipping {system_name}')
#        continue
      csv_files = {'Dynamic' : {},
                   'Adaptive': {},
                   'Online' : {}
                  }

      for e in experiments['experiments']:
        if (('Adaptive' in e['type']) or ('Dynamic' in e['type'])
              or ( 'Online' in e['type'])) :
          encode = e['cmd']
          for k,v in e['regions'].items():
            if 'model' not in v:
              continue
            encode += v['model']
          global_config_hash = hashlib.sha256(encode.encode('utf-8')).hexdigest()
          e['g_hash'] = global_config_hash

      for e in experiments['experiments']:
        if 'csv' in e['type']:
          if 'Dynamic' in e['type']:
            csv_files['Dynamic'][e['g_hash']] = e
          elif 'Adaptive' in e['type']:
            csv_files['Adaptive'][e['g_hash']] = e
          elif 'Online' in e['type']:
            csv_files['Online'][e['g_hash']] = e

      for e in experiments['experiments']:
        if 'Application Time' in e['type']:
          if 'measured' in e:
            packed = pack(e, regions, bench, csv_files)
            packed_exp.append([system_name] + packed)
    columns = ['System', 'Region', 'Execution Type', 'Policy', 'Input', 'Id', 'Execution time (s)']
    df = pd.DataFrame(packed_exp, columns=columns)
#    print(df.groupby(['System', 'Region',  'Policy','Input']).mean())
    df.to_json(f'{args.results_dir}/{bench.name}_gathered.json')

  elif args.action == 'visualize':
    import pandas as pd
    pd.set_option('display.max_rows', None)
    data = f'{args.results_dir}/{bench.name}_gathered.json'
    df = pd.read_json(data)
    sizes=set_size(width=textWidth)
    print(df)
    bench.visualize(df, f'{args.results_dir}/{bench.name}.pdf', sizes)


if __name__ == '__main__':
  main()
  sys.exit()

