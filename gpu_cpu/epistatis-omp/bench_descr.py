import os
from bench_modules.benchmark import BaseBenchmark
import re

class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('epistatis')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    self._build = f'FOPENMP="{compile_flags}" make -f Makefile.adaptive'
    self._clean = 'make -f Makefile.adaptive clean'
    # input: samples SNPs iterations
    self._inputs = []
    for i in range(4,11+1):
      self._inputs.append('100 %d 10'%(i*5000))
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
    exec_time_pattern = 'Total offloading time: (.*) sec'
    tmp =  re.findall(exec_time_pattern, stdout)[0]
    print(tmp, type(tmp))
    return tmp

  def extractInputFromCMD(self, cmd):
    return ','.join(cmd.split(' ')[1:])

  def visualize(self, df, outfile, sizes):
    import matplotlib
    import pandas as pd
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    fig, ax = plt.subplots(figsize=sizes)
    df['Input'] = df['Input'].str.split(',', expand=True)[1]
    df['Input'] = df['Input'].astype(int)
    df = df[df.Input  < 45001]
    print(df)

    stats_df = df.copy(deep=True)
    unique_policies = stats_df['Execution Type'].unique()
    stats_df = stats_df.groupby(['System', 'Execution Type',  'Input']).mean().reset_index()
    stats_df = stats_df.pivot(index=['System', 'Input'], columns='Execution Type', values='Execution time (s)').reset_index()
#    tmp = df.groupby(['System', 'Execution Type']).mean()['Execution time (s)'].reset_index() 
    print(stats_df)
    for u in unique_policies:
        stats_df[f'Speed Up {u}'] = stats_df['gpu']/stats_df[u] 

    for u in unique_policies:
        stats_df[u] = stats_df[f'Speed Up {u}']
        stats_df = stats_df.drop([f'Speed Up {u}'], axis=1)
    print(stats_df)
    stats_df['Benchmark'] = self._name
    stats_df.to_pickle(f'{self._name}.pkl')


    count_df = df[df['Policy'].isin(['gpu', 'cpu'])].copy(deep=True)
    count_df= count_df.groupby(['System', 'Policy', 'Input']).mean().reset_index()
    count_df= count_df.pivot(index=['System', 'Input'], columns='Policy', values='Execution time (s)').reset_index()
    count_df['diff'] = count_df['cpu'] > count_df['gpu']
    tmp = count_df.groupby('System').sum().reset_index().set_index('System')
    tmp1 = count_df.groupby('System').size()
    print(tmp['diff'].divide(tmp1))
    return

    g = sns.relplot(data=df, x='Input', y='Execution time (s)',
                    col='System', hue='Policy', kind='line', marker='o',
                    facet_kws={'sharey':False, 'sharex':True})
    g.set_axis_labels('Size', 'Execution time (s)\nlog2')
    plt.yscale('log', base=2)
    plt.gca().yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
    plt.tight_layout()
    plt.savefig(f'{outfile}.pdf')
    plt.close()
    return
    print(df)
    unique_policies = df['Execution Type'].unique()
    print(df)
    df = df.groupby(['System', 'Execution Type', 'Input', 'Policy']).mean().reset_index()
    print(df)
    df = df.pivot(index=['System', 'Input'], columns='Execution Type', values='Execution time (s)').reset_index()
    print(df)
    print(unique_policies)
    unique_policies = unique_policies[ unique_policies != 'gpu']
#    unique_policies=['Oracle', 'cpu']
    for u in unique_policies:
        df[f'Speed Up {u}'] = df['gpu']/df[u] 

    for u in unique_policies:
        df[u] = df[f'Speed Up {u}']
        df = df.drop([f'Speed Up {u}'], axis=1)
    df = df.drop(['gpu'], axis = 1)
    df = pd.melt(df, id_vars=['System', 'Input'], value_name = 'Speedup', var_name = 'Policy', value_vars=unique_policies).reset_index()

    g = sns.relplot(data=df, x='Input', y='Speedup',
                    col='System', hue='Policy',
                    col_order = ['lassen', 'pascal', 'corona'],
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
            c.axhline(y=1.0, c='gray')
    print(axes.shape)
    g.set_axis_labels('Size', 'speedup')
    #plt.gca().yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
    plt.tight_layout()
    plt.savefig(f'{outfile}_speedup.pdf')
    plt.close()

