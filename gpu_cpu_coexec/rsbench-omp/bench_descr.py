import os
from bench_modules.benchmark import BaseBenchmark
import re
import numpy as np
from matplotlib import rcParams

class Benchmark(BaseBenchmark):
  def __init__(self, system):
    super().__init__('RSBench')
    self._root = os.path.split(os.path.realpath(__file__))[0]
    compile_flags=system.get_compile_flags()
    self._build = f'FOPENMP="{compile_flags}" make'
    self._clean = 'make clean'
    self._inputs = []
    for size in ['large']:
      for i in [512, 1024, 2048, 4096, 8192, 16384]:
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
    exec_time_pattern = '__ExecutionTime__:(.*)'
    tmp =  re.findall(exec_time_pattern, stdout)
    if len(tmp) == 0:
      return None
    return tmp[0]

  def extractInputFromCMD(self, cmd):
    vals=cmd.split(' ')
    return f'{vals[4]}:{vals[6]}'

  def visualize(self, df, outfile, sizes):
    import pandas as pd
    import matplotlib.pyplot as plt
    import matplotlib
    from matplotlib.colors import ListedColormap
    import seaborn as sns
    fig, ax = plt.subplots(figsize=sizes)
    feature_name = u'Lookups ($x*10000$)'
    df[['Type', feature_name]] = df['Input'].str.split(':', expand=True)
    df['Execution time (s)'] = df['Execution time (s)'] / 1000000
    df[feature_name] = df[feature_name].astype(int)
    df = df[df [feature_name] >= 256*5000]
    df[feature_name] = (df[feature_name] / 10000).astype(int) 
    df = df[ ((df['Execution Type'].isin(['Oracle', 'Adaptive-25', 'Adaptive-50','Adaptive-75', 'Adaptive-100'])) | ( (df['Execution Type'] == 'Static') & (df['Policy'] == 'gpu100') ))]
    speedUpGlobal = self.computeSpeedup(df.copy(deep=True), feature_name, 'Static') 
    self.scatterplot(speedUpGlobal, f'{outfile}_coexec', feature_name, sizes,
            feature_name, 'Speedup', logx=True, legend='brief', ncol=2,
            legendPos=[0.32,0.52], col_order= ['lassen', 'pascal'],
            setTitle=True, rows=False, title_fontsize=50, xylabel_fontsize=48,
            xyticks_fontsize=40, legend_title_fontsize=40,
            show_legend_title=False, aspect_ratio=2)
    df[feature_name] = '$2^{' + np.log2(df[feature_name]).astype(int).astype(str) + '}$'
    systems=['Power9 + V100','Intel + P100']
    map_names = dict()
    for f in df['Policy'].unique():
        val = int(f.replace('gpu',''))
        map_names[f]=val
    map_names['gpu0'] = 0 
    yLabel = r'\begin{center} \% on GPU\end{center}'
    df[yLabel] = df["Policy"].replace(map_names)
    df = df[df['Execution Type'] != 'Static']
    sns.set_style("whitegrid")
    plt.rc('text', usetex=True)
    rcParams['font.family'] = 'sans-serif'
    sns.set(rc={'figure.figsize':sizes})
    sns.set_style("whitegrid", {'axes.grid' : False})
    #markers = { 32 : '*', 64 : 'd', 128 : '>', 256 : '<', 512 : 'X', 1024 : 'P' }  
    with sns.plotting_context(rc={'text.usetex' : True, "legend.fontsize":28}):
        g = sns.catplot(data=df, x=feature_name, 
                        col_order = ['lassen', 'pascal'],
                        y=yLabel,
                        col='System', 
                        dodge=True,
                        hue='Execution Type', 
                        cut=True,
                        jitter=True,
                        inner=None,
                        #linewidth=1, 
                        color='#DDDDDD',
                        aspect=1.8,
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
            c.set_yticklabels(c.get_yticklabels(), fontdict={'size':38})
            c.set_xticklabels(c.get_xticklabels(), fontdict={'size':38},rotation = 0)
            c.yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '${:.3g}$'.format(y)))
            c.set_title(s, fontsize=48)
            for i in c.get_xticks()[:-1]:
                c.axvline(i + 0.5, color='grey', lw=1)
        #tmp = g.add_legend(title='Policy', fontsize=26, ncol=2, )
        #legendPos=[0.55,0.68]
        #g._legend.set_bbox_to_anchor(legendPos) 
        #plt.setp(g._legend.get_title(), fontsize=32)
        #for lh in g._legend.legendHandles:
        #    lh.set_alpha(0.9)
        #    lh._sizes = [260]
        g.set_axis_labels(feature_name, yLabel, fontsize=43)
        plt.tight_layout()
        plt.savefig(f'{outfile}_violin.pdf')
        plt.close()
    return
