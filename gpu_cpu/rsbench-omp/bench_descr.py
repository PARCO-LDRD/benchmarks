import os
from bench_modules.benchmark import BaseBenchmark
import re



class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('RSBench')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    self._build = f'FOPENMP="{compile_flags}" make'
    self._clean = 'make clean'
    self._inputs = []
    for size in ['large']:
      for i in [8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384]:
        lus = i * 5000
        in_args = f'-m event -s {size} -l {lus}'
        self._inputs.append(in_args)
    self._executable = f'rsbench'

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

  def extractInputFromCMD(self, cmd):
    vals=cmd.split(' ')
    return f'{vals[4]}:{vals[6]}'

  def visualize(self, df, outfile, sizes):
    import pandas as pd
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    import matplotlib 
    fig, ax = plt.subplots(figsize=sizes)
    df[['Type', 'lookups']] = df['Input'].str.split(':', expand=True)
    df['lookups'] = df['lookups'].astype(int)
    df['Execution time (s)'] = df['Execution time (s)'] / 1000000
    print(df)
    return

    df.loc[df['Execution Type'] =='Static', 'Execution Type'] = df.loc[df['Execution Type'] == 'Static', 'Policy']
    df = df.groupby(['System', 'Execution Type', 'lookups', 'Policy']).mean().reset_index()
    unique_policies = df['Execution Type'].unique()
    df = df.pivot(index=['System', 'lookups'], columns='Execution Type', values='Execution time (s)').reset_index()
    unique_policies = unique_policies[ unique_policies != 'gpu']
    for u in unique_policies:
        df[f'Speed Up {u}'] = df['gpu']/df[u] 

    for u in unique_policies:
        df[u] = df[f'Speed Up {u}']
        df = df.drop([f'Speed Up {u}'], axis=1)
    df = df.drop(['gpu'], axis = 1)
    df = pd.melt(df, id_vars=['System', 'lookups'], value_name = 'Speedup', var_name = 'Policy', value_vars=unique_policies).reset_index()

    g = sns.relplot(data=df, x='lookups', y='Speedup',
                    col='System', hue='Policy',
                    col_order = ['lassen', 'pascal'],
                    markers=True,
                    style='Policy',
                    edgecolor='black', 
                    aspect=1.6,
                    alpha=0.7,
                    lw=2, kind='scatter',
                    facet_kws={'sharey': False, 'sharex': True})
    axes = g.axes
    for r in g.axes:
        for c in r:
            c.yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
            c.set_xscale('log', base=2)
            c.axhline(y=1.0, c='gray')
    print(axes.shape)
    g.set_axis_labels('lookups', 'speedup')
    #plt.gca().yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
    plt.tight_layout()
    plt.savefig(f'{outfile}_speedup.pdf')
    plt.close()


