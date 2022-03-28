import os
from bench_modules.benchmark import BaseBenchmark
import re


class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('XSBench')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    self._build = f'FOPENMP="{compile_flags}" make'
    self._clean = 'make clean'
    self._inputs = []
    for size in ['small', 'large']:
      for i in [64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384]:
        lus = i * 5000
        in_args = f'-m event -s {size} -l {lus}'
        self._inputs.append(in_args)
    self._executable = f'XSBench'

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
    # convert from microseconds to seconds.
    return tmp[0]

  def extractInputFromCMD(self, cmd):
    vals=cmd.split(' ')
    return f'{vals[4]}:{vals[6]}'

  def visualize(self, df, outfile, sizes):
    import matplotlib
    import pandas as pd
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
#    fig, ax = plt.subplots(figsize=sizes)
    df[['Size', 'lookups']] = df['Input'].str.split(':', expand=True)
    df['lookups'] = df['lookups'].astype(int)
    df['Execution time (s)'] = df['Execution time (s)']/1e6
    df.loc[df['Execution Type'] =='Static', 'Execution Type'] = df.loc[df['Execution Type'] == 'Static', 'Policy']

#    static_df = df[df['Execution Type'] == 'Static']
#    oracle = df[df['Execution Type'] == 'Oracle']
#    static_df = static_df.groupby(['System', 'Input', 'Policy', 'Execution Type', 'Size', 'lookups']).mean().reset_index()
#    oracle = oracle.groupby(['System', 'Input', 'Policy', 'Execution Type', 'Size', 'lookups']).mean().reset_index()
#    best = static_df.loc[static_df.groupby(['System', 'Input'])['Execution time (s)'].idxmin()]
#    worst = static_df.loc[static_df.groupby(['System', 'Input'])['Execution time (s)'].idxmax()]
#    worst['Execution Type'] = 'Static-Worst'
#    best['Execution Type'] = 'Static-Best'
#    oracle['Execution Type'] = 'Oracle'
#    artificial = pd.concat([worst, best, oracle], axis = 0).reset_index()
#    artificial = artificial.rename(columns = {'Policy' : 'Execution Device'})
#    print(artificial)
#
#    fig, ax = plt.subplots(figsize=sizes)
#    g = sns.relplot(data=artificial, x='lookups', 
#                    y='Execution time (s)',
#                    col='System', 
#                    hue='Execution Type', 
#                    row='Size', 
#                    style='Execution Device', 
#                    kind='scatter',
#                    edgecolor='black',
#                    alpha=0.3,
#                    facet_kws={'sharey': False, 'sharex': True}
#                    )
#
#    for r in g.axes:
#        for c in r:
#            c.set_yscale('log', base=10)
#            c.set_xscale('log', base=2)
#            c.yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
#
#    g.set_axis_labels('Lookups\nlog2', 'Execution time (s)\nlog')
#    plt.tight_layout()
#    plt.savefig(f'{outfile}')
#    plt.close()

#    for k, v in zip(sorted(df['Policy'].unique()), markers):
#        style_to_markers[k] = v
    g = sns.relplot(data=df, x='lookups', y='Execution time (s)',
                    col='System', hue='Execution Type', row='Size', kind='line',
                    markeredgecolor='black', 
                    alpha=0.5, lw=0.1,
                    facet_kws={'sharey': False, 'sharex': True})
    g.set_axis_labels('Lookups\nlog2', 'Execution time (s)\nlog')
    for r in g.axes:
        for c in r:
            c.set_yscale('log', base=10)
            c.set_xscale('log', base=2)
            c.yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))

    plt.tight_layout()
    plt.savefig(f'{outfile}')
    plt.close()

