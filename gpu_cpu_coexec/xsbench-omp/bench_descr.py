import os
from matplotlib import rcParams
from bench_modules.benchmark import BaseBenchmark
import re
import numpy as np


class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('XSBench')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    self._build = f'FOPENMP="{compile_flags}" make'
    self._clean = 'make clean'
    self._inputs = []
    for size in ['large']:
      for i in [256, 512, 1024, 2048, 4096, 8192, 16384]:
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
    exec_time_pattern = '__ExecutionTime__:(.*)'
    tmp =  re.findall(exec_time_pattern, stdout)
    if len(tmp) == 0:
      return None
    return tmp[0]

  def extractInputFromCMD(self, cmd):
    vals=cmd.split(' ')
    return f'{vals[4]}:{vals[6]}'


  def speedUpCoExec(self, df, feature_name, execution_types=['Oracle', 'Adaptive-25', 'Adaptive-50','Adaptive-75', 'Adaptive-100']):
    import pandas as pd
    map_names = dict()
    for f in df['Policy'].unique():
        val = int(f.replace('gpu',''))
        map_names[f]=f'({val},{100-val})'
    map_names['gpu0'] = '(0,100)'
    df["Policy"].replace(map_names, inplace=True)
    df = df.drop(['Id'], axis=1)
    df = df.groupby(['System', 'Execution Type', 'Policy', feature_name]).mean().reset_index()
    df['TMP_ID'] = df['Execution Type'] + ':' + df['Policy']
    df = df.pivot(index=['System', feature_name], columns='TMP_ID', values='Execution time (s)').reset_index()
    vals = []
    for v in df.columns:
        if v != 'System' and v != feature_name:
            vals.append(v)
            df[v] = df['Static:(100,0)'] / df[v] 
    df = pd.melt(df, id_vars=['System', feature_name], value_name = 'Speedup', var_name = 'TMP_ID', value_vars=vals).reset_index().dropna(axis=0)
    df[['Execution Type', 'Partition']] = df['TMP_ID'].str.split(':', expand=True)  
    return df[df['TMP_ID'] != 'Static:(100,0)']

  def visualize(self, df, outfile, sizes):
    import pandas as pd
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    import matplotlib
    fig, ax = plt.subplots(figsize=sizes)
    feature_name = u'Lookups ($x*10000$)'
    df[['Type', feature_name]] = df['Input'].str.split(':', expand=True)
    df = df.loc[df['Type'] == 'large',]
    df = df.drop(['Input', 'Type'],axis=1)
    df[feature_name] = df[feature_name].astype(int) 
    df = df[df [feature_name] >= 256*5000]
    df[feature_name] = (df[feature_name] / 10000).astype(int) 


    df = df[ ((df['Execution Type'].isin(['Oracle', 'Adaptive-25', 'Adaptive-50','Adaptive-75', 'Adaptive-100'])) | ( (df['Execution Type'] == 'Static') & (df['Policy'] == 'gpu100') ))]
    speedUpGlobal = self.computeSpeedup(df.copy(deep=True), feature_name, 'Static') 
    self.scatterplot(speedUpGlobal, f'{outfile}_coexec', feature_name, sizes,
            '', 'Speedup', logx=True, legend='brief', ncol=1,
            legendPos=[0.42,0.6],setTitle=True, show_legend_title=False)
    df[feature_name] = '$2^{' + np.log2(df[feature_name]).astype(int).astype(str) + '}$'

    map_names = dict()
    for f in df['Policy'].unique():
        val = int(f.replace('gpu',''))
        map_names[f]=val
    map_names['gpu0'] = 0 
    yLabel = r'\begin{center} \% on GPU\end{center}'
    df[yLabel] = df["Policy"].replace(map_names)
    self.choicemap(df, outfile, sizes, feature_name)
    df = df[df['Execution Type'] != 'Static']
    systems=['Power9 + V100','Intel + P100', 'AMD + MI50']
    sns.set_style("whitegrid")
    plt.rc('text', usetex=True)
    rcParams['font.family'] = 'sans-serif'
    sns.set(rc={'figure.figsize':sizes})
    sns.set_style("whitegrid", {'axes.grid' : False})
    #markers = { 32 : '*', 64 : 'd', 128 : '>', 256 : '<', 512 : 'X', 1024 : 'P' }  
    with sns.plotting_context(rc={'text.usetex' : True, "legend.fontsize":28}):
        g = sns.catplot(data=df, x=feature_name, 
                        col_order = ['lassen', 'pascal', 'corona'],
                        y=yLabel,
                        col='System', 
                        dodge=True,
                        hue='Execution Type', 
                        #palette="Set2",
#                        linewidth=0.1,
                        cut=True,
                        #saturation=0.2,
                        jitter=True,
                        inner=None, linewidth=1, color='#DDDDDD',
                        aspect=2,
                        kind='violin',
                        sharey = False,
                        facet_kws={'sharey': False, 'sharex': True},
                        legend=False)
        g.map_dataframe(sns.stripplot, x=feature_name, y=yLabel,
                hue='Execution Type', palette=self.adaptation_colors,
                dodge=True, s=12, jitter=0, linewidth=0.1, alpha=0.9, 
                            edgecolor=None) 

        axes = g.axes
        for c,s in zip(g.axes.flat,systems):
            c.set_ylim(top=100.9)
            c.set_yticklabels(c.get_yticklabels(), fontdict={'size':34})
            c.set_xticklabels(c.get_xticklabels(), fontdict={'size':34},rotation = 0)
            c.yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '${:.3g}$'.format(y)))
            c.set_title('')
            for i in c.get_xticks()[:-1]:
                c.axvline(i + 0.5, color='grey', lw=1)

        #tmp = g.add_legend(title='Policy', fontsize=26, ncol=2)
        #plt.setp(g._legend.get_title(), fontsize=32)
        #for lh in g._legend.legendHandles:
        #    lh.set_alpha(0.9)
        #    lh._sizes = [260]
        g.set_axis_labels(feature_name, yLabel, fontsize = 34)
        plt.tight_layout()
        plt.savefig(f'{outfile}_violin.pdf')
        plt.close()


    
    return
    df = self.speedUpCoExec(df, feature_name)
    sns.set(font_scale=1.25)
    sns.set_style("whitegrid")
    #markers = { 32 : '*', 64 : 'd', 128 : '>', 256 : '<', 512 : 'X', 1024 : 'P' }  
    with sns.plotting_context(rc={'text.usetex' : True}):
        g = sns.relplot(data=df, x=feature_name, 
                        col_order = ['lassen', 'pascal', 'corona'],
                        y='Speedup',
                        col='System', 
                        hue='Execution Type', 
                        style='Partition', 
                        #markers=markers,
                        edgecolor='black',
                        alpha=0.7,
                        s=200,
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
            c.set_xscale('log', base=2)
        g.set_axis_labels('Look ups \n ($log2$)', 'speedup')
        #plt.gca().yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '{:.3g}'.format(y)))
        plt.tight_layout()
        plt.savefig(f'{outfile}_coexec_speedup.pdf')
        plt.close()
        return
