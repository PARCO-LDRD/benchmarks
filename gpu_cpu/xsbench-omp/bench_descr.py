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
    df = df[df['Size'] == 'large'] 
    df['lookups'] = df['lookups'].astype(int)
    df = df[df ['lookups'] >= 256*5000]
    print(df[(df['lookups'] == 256 * 5000) & (df['System'] == 'corona')]) 
    df['Execution time (s)'] = df['Execution time (s)']
    df.loc[df['Execution Type'] == 'Static', 'Execution Type'] = 'Static,' + df.loc[df['Execution Type'] == 'Static', 'Policy'].str.upper()
    unique_policies = df['Execution Type'].unique()
    df = df.groupby(['System', 'Execution Type', 'lookups']).mean().reset_index()
    print(df)
    df = df.pivot(index=['System', 'lookups'], columns='Execution Type', values='Execution time (s)').reset_index()
    print(df)
    print(unique_policies)
    unique_policies = unique_policies[ unique_policies != 'Static,GPU']
    for u in unique_policies:
        df[f'Speed Up {u}'] = df['Static,GPU']/df[u] 

    for u in unique_policies:
        df[u] = df[f'Speed Up {u}']
        df = df.drop([f'Speed Up {u}'], axis=1)
    df = df.drop(['Static,GPU'], axis = 1)
    df = pd.melt(df, id_vars=['System', 'lookups'], value_name = 'Speedup', var_name = 'Policy', value_vars=unique_policies).reset_index()
    sns.set(font_scale=1.25)
    sns.set_style("whitegrid")
    systems=['Power9 + V100','Intel + P100', 'AMD + MI50']
    with sns.plotting_context(rc={"legend.fontsize":20, 'text.usetex' : True}):
        g = sns.relplot(data=df, x='lookups', y='Speedup',
                        col='System', hue='Policy',
                        col_order = ['lassen', 'pascal', 'corona'],
                        markers=True,
                        style='Policy',
                        edgecolor='black', 
                        aspect=1.6,
                        alpha=0.7,
                        s=200,
                        lw=2, kind='scatter',
                        facet_kws={'sharey': False, 'sharex': True},
                        legend="full",
                        )
        plt.setp(g._legend.get_title(), fontsize=20)
        sns.move_legend(g,loc='center', ncol=2, title='Policy', frameon=True)
        leg = g._legend
        leg.set_bbox_to_anchor([0.56,0.7]) 
        for lh in g._legend.legendHandles:
            lh.set_alpha(0.7)
            lh._sizes = [120]

        axes = g.axes
        for c,s in zip(g.axes.flat,systems):
            h,l = c.get_legend_handles_labels()
            print(h,l)
            c.yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
            c.axhline(y=1.0, c='gray')

            c.set_xlabel("X-Axis", fontsize = 24)
            c.set_ylabel("Y-Axis", fontsize = 24)
            c.set_xscale('log', base=2)
            c.set_title(s, fontsize = 24)
        print(axes.shape)
        g.set_axis_labels('Look Ups\n($log2$)', 'speedup')
        #plt.gca().yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
        plt.tight_layout()
        plt.savefig(f'{outfile}_speedup.pdf')
        print(f'{outfile}_speedup.pdf')
        plt.close()


