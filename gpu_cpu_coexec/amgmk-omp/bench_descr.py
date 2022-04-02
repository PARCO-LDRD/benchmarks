import os
from bench_modules.benchmark import BaseBenchmark
import re

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
    tmp =  re.findall(exec_time_pattern, stdout)
    if len(tmp) == 0:
        return None
    return tmp[0]

  def extractInputFromCMD(self, cmd):
    return ','.join(cmd.split(' ')[1:])

  def visualize(self, df, outfile, sizes):
    import pandas as pd
    import matplotlib.pyplot as plt
    import matplotlib
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    fig, ax = plt.subplots(figsize=sizes)
    df['Input'] = df['Input'].str.split(',', expand=True)[0] 
    df['Input'] = df['Input'].astype(int)
    oracle = df[df['Execution Type'] == 'Oracle']
    online = df[df['Execution Type'] == 'Online']

    df = df[ ((df['Execution Type'].isin(['Oracle', 'Online'])) | ( (df['Execution Type'] == 'Static') & (df['Policy'] == 'gpu100') ))]
    map_names={}
    print(df['Policy'].unique())
    for i in range(60,101,4): 
        val=100-i
        map_names[f'gpu{i}']=f'({i},{val})'
    map_names['gpu0'] = '(0,100)'
    print (map_names.keys())
    df["Policy"].replace(map_names, inplace=True)
    df = df.groupby(['System', 'Execution Type', 'Policy', 'Input']).mean().reset_index()
    df['TMP_ID'] = df['Execution Type'] + ':' + df['Policy']
    print(df)

    df["Policy"].replace(map_names, inplace=True)
    df = df.groupby(['System', 'Execution Type', 'Policy', 'Input']).mean().reset_index()
    df['TMP_ID'] = df['Execution Type'] + ':' + df['Policy']
    print(df)
    df = df.pivot(index=['System', 'Input'], columns='TMP_ID', values='Execution time (s)').reset_index()
    print(df)
    vals = []
    for v in df.columns:
        if v != 'System' and v != 'Input':
            vals.append(v)
            df[v] = df['Static:(100,0)'] / df[v] 
    df = pd.melt(df, id_vars=['System', 'Input'], value_name = 'Speedup', var_name = 'TMP_ID', value_vars=vals).reset_index().dropna(axis=0)
    df[['Execution Type', 'Partition']] = df['TMP_ID'].str.split(':', expand=True)  
    df = df[df['TMP_ID'] != 'Static:(100,0)']

    sns.set(font_scale=1.25)
    sns.set_style("whitegrid")
    systems=['Power9 + V100','Intel + P100', 'AMD + MI50']
    #markers = { 32 : '*', 64 : 'd', 128 : '>', 256 : '<', 512 : 'X', 1024 : 'P' }  
    with sns.plotting_context(rc={'text.usetex' : True}):
        g = sns.relplot(data=df, x='Input', 
                        col_order = ['lassen', 'pascal', 'corona'],
                        y='Speedup',
                        col='System', 
                        hue='Execution Type', 
                        style='Partition', 
                        #markers=markers,
                        edgecolor='black',
                        alpha=0.7,
                        aspect=1.6,
                        lw=4, kind='scatter',
                        facet_kws={'sharey': False, 'sharex': True},
                        legend="full")
        plt.setp(g._legend.get_title(), fontsize=20)
        sns.move_legend(g,loc='center', frameon=True, ncol=3)
        leg = g._legend
        leg.set_bbox_to_anchor([0.15,0.75]) 
        for lh in g._legend.legendHandles:
            lh.set_alpha(0.7)
            lh._sizes = [120]
            lh
        axes = g.axes
        for c,s in zip(g.axes.flat,systems):
            c.yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
            c.axhline(y=1.0, c='gray')
            c.set_xlabel("X-Axis", fontsize = 24)
            c.set_ylabel("Y-Axis", fontsize = 24)
            c.set_title(s, fontsize = 24)
        g.set_axis_labels('Grid Size ($n^3$)', 'speedup')
        #plt.gca().yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
        plt.tight_layout()
        plt.savefig(f'{outfile}_coexec_speedup.pdf')
        plt.close()
        return
