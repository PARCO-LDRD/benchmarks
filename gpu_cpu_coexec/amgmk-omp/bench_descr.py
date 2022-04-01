import os
from bench_modules.benchmark import BaseBenchmark
import re
import matplotlib

class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('amgmk')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    self._build = f'FOPENMP="{compile_flags}" make -f Makefile.adaptive'
    self._clean = 'make -f Makefile.adaptive clean'
    self._inputs = []
    for i in range(1, 16+1):
      self._inputs.append('%d %d %d'%(i*16, i*16, i*16))
    self._executable = f'AMGMk'

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
    exec_time_pattern = 'Wall time = (.*) seconds'
    tmp =  re.findall(exec_time_pattern, stdout)[0]
    print(tmp, type(tmp))
    return tmp

  def extractInputFromCMD(self, cmd):
    return ','.join(cmd.split(' ')[1:])

  def visualize(self, df, outfile, sizes):
    import pandas as pd
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    fig, ax = plt.subplots(figsize=sizes)
    df['Input'] = df['Input'].str.split(',', expand=True)[0] 
    df['Input'] = df['Input'].astype(int)
    oracle = df[df['Execution Type'] == 'Oracle']
    online = df[df['Execution Type'] == 'Online']
    print(df)
    default = df[((df['Policy'] == 'gpu100') & (df['Execution Type'] == 'Static'))]
    default = default.groupby(['System', 'Input']).mean().reset_index()
    default['Execution Type'] ='default (GPU)'
    online = online.groupby(['Execution Type', 'System', 'Input', 'Policy']).mean().reset_index()
    oracle = oracle.groupby(['Execution Type','System', 'Input', 'Policy']).mean().reset_index()
    online['Speedup'] = default['Execution time (s)'] / online['Execution time (s)']
    oracle['Speedup'] = default['Execution time (s)'] / oracle['Execution time (s)']
    df = df[((df['Execution Type'] == 'Static'))]
    df = df.groupby(['System', 'Input', 'Policy']).mean().reset_index()
    df['Speedup'] = -1.0
    df = df.set_index(['System', 'Input'])
    for d in df['Policy'].unique():
        print('Current')
        df.loc[df['Policy'] == d, 'Speedup'] = df.loc[df['Policy'] == 'gpu100', 'Execution time (s)'] / df.loc[df['Policy'] == d, 'Execution time (s)']
        s = ''.join(x for x in d if x.isdigit())
        df.loc[df['Policy'] == d, 'Execution Type'] = f'Static (GPU-{s})'
    print("Online")
    print(df['Policy'].unique())
    df = df[df["Execution Type"].isin(['Static (GPU-64)', 'Static (GPU-0)'])]
    df = pd.concat([online, oracle, df.reset_index()])
    g = sns.relplot(data=df, x='Input', 
                    y='Speedup',
                    col='System', 
                    hue='Execution Type', 
                    kind='scatter',
                    edgecolor='black',
                    alpha=0.7,
                    facet_kws={'sharey': False, 'sharex': True}
                    )
    for r in g.axes:
        for c in r:
            c.axhline(y=1.0, c='gray')
    g.set_axis_labels('Size', 'Speedup')
    g.set_xticklabels(rotation=-90)
    plt.gca().yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
    plt.tight_layout()
    plt.savefig(f'{outfile}_coexec_speedup.pdf')
    plt.close()
    return   
    print(df)
    g = sns.relplot(data=df, x='Input', y='Execution time (s)',
                    col='System', hue='Policy', kind='line', marker='o')
    g.set_axis_labels('Grid', 'Execution time (s)\nlog2')
    g.set_xticklabels(rotation=-90)
    plt.yscale('log', base=2)
    plt.gca().yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
    plt.tight_layout()
    plt.savefig(f'{outfile}')
    plt.close()
