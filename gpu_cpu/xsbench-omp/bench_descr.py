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
    df = df[df['Size'].isin(['large']) == True] 

    df.loc[df['Execution Type'] =='Static', 'Execution Type'] = df.loc[df['Execution Type'] == 'Static', 'Policy']
    count_df = df[df['Execution Type'].isin(['gpu', 'cpu'])].copy(deep=True)
    count_df= count_df.groupby(['System', 'Execution Type', 'Size', 'Input']).mean().reset_index()
    count_df= count_df.pivot(index=['System', 'Input', 'Size'], columns='Execution Type', values='Execution time (s)').reset_index()
    count_df['diff'] = count_df['cpu'] > count_df['gpu']
    tmp = count_df.groupby('System').sum().reset_index().set_index('System')
    tmp1 = count_df.groupby('System').size()
    print(tmp['diff'].divide(tmp1))
    
    stats_df = df.copy(deep=True)
    unique_policies = stats_df['Execution Type'].unique()
    stats_df = stats_df.groupby(['System', 'Execution Type', 'Size', 'Input']).mean().reset_index()
    stats_df = stats_df.pivot(index=['System', 'Input', 'Size'], columns='Execution Type', values='Execution time (s)').reset_index()
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


#    g = sns.relplot(data=df, x='lookups', y='Execution time (s)',
#                    col='System', hue='Execution Type', kind='line',
#                    markeredgecolor='black', 
#                    style='Execution Type',
#                    alpha=0.5, lw=2,
#                    facet_kws={'sharey': False, 'sharex': True})
#    g.set_axis_labels('Lookups\nlog2', 'Execution time (s)\nlog')
#    for r in g.axes:
#        for c in r:
#            c.set_yscale('log', base=10)
#            c.set_xscale('log', base=2)
#            c.yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
#
#    plt.tight_layout()
#    plt.savefig(f'{outfile}.pdf')
#    plt.close()
#
#    g = sns.relplot(data=df, x='lookups', y='Execution time (s)',
#                    col='System', hue='Execution Type', kind='line',
#                    markeredgecolor='black', 
#                    style='Execution Type',
#                    alpha=0.5, lw=2,
#                    err_style='bars',
#                    facet_kws={'sharey': False, 'sharex': True})
#    g.set_axis_labels('Lookups\nlog2', 'Execution time (s)\nlog')
#    for r in g.axes:
#        for c in r:
#            c.set_yscale('log', base=10)
#            c.set_xscale('log', base=2)
#            c.yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
#
#    plt.tight_layout()
#    plt.savefig(f'{outfile}_err.pdf')
#    plt.close()
#
#    df = df[df['Execution Type'].isin(['Adaptive-25', 'Oracle', 'gpu', 'cpu']) == True] 
#    g = sns.relplot(data=df, x='lookups', y='Execution time (s)',
#                    col='System', hue='Execution Type', kind='line',
#                    markeredgecolor='black', 
#                    style='Execution Type',
#                    alpha=0.5, lw=2,
#                    err_style='bars',
#                    facet_kws={'sharey': False, 'sharex': True})
#    g.set_axis_labels('Lookups\nlog2', 'Execution time (s)\nlog')
#    for r in g.axes:
#        for c in r:
#            c.set_yscale('log', base=10)
#            c.set_xscale('log', base=2)
#            c.yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
#
#    plt.tight_layout()
#    plt.savefig(f'{outfile}_drop.pdf')
#    plt.close()
#    unique_policies = df['Execution Type'].unique()
#    print(df)
#    df = df.groupby(['System', 'Execution Type', 'lookups', 'Policy']).mean().reset_index()
#    print(df)
#    df = df.pivot(index=['System', 'lookups'], columns='Execution Type', values='Execution time (s)').reset_index()
#    print(df)
#    print(unique_policies)
#    unique_policies = unique_policies[ unique_policies != 'gpu']
##    unique_policies=['Oracle', 'cpu']
#    for u in unique_policies:
#        df[f'Speed Up {u}'] = df['gpu']/df[u] 
#
#    for u in unique_policies:
#        df[u] = df[f'Speed Up {u}']
#        df = df.drop([f'Speed Up {u}'], axis=1)
#    df = df.drop(['gpu'], axis = 1)
#    df = pd.melt(df, id_vars=['System', 'lookups'], value_name = 'Speedup', var_name = 'Policy', value_vars=unique_policies).reset_index()
#
#    g = sns.relplot(data=df, x='lookups', y='Speedup',
#                    col='System', hue='Policy',
#                    col_order = ['lassen', 'pascal', 'corona'],
#                    markers=True,
#                    style='Policy',
#                    edgecolor='black', 
#                    aspect=1.6,
#                    alpha=0.7,
#                    lw=2, kind='scatter',
#                    facet_kws={'sharey': False, 'sharex': True})
#    axes = g.axes
#    for r in g.axes:
#        for c in r:
#            c.yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
#            c.set_xscale('log', base=2)
#            c.axhline(y=1.0, c='gray')
#    print(axes.shape)
#    g.set_axis_labels('lookups', 'speedup')
#    #plt.gca().yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
#    plt.tight_layout()
#    plt.savefig(f'{outfile}_speedup.pdf')
#    plt.close()


