from abc import ABC, abstractmethod
import numpy as np
import seaborn as sns

class BaseBenchmark(ABC):
  def __init__(self, name):
    self._name = name
    self.adaptation_colors = dict() 
    exec_modes = [ 'Static,CPU', 'Oracle',  'Adaptive-75', 'Adaptive-50', 'Adaptive-25']
    palette = sns.color_palette("tab10", len(exec_modes))
    for e, c in zip(exec_modes, palette):
        self.adaptation_colors[e] = c

  @property
  def name(self):
    return self._name

  @name.setter
  def name(self, value):
    self._name = value

  @property
  @abstractmethod
  def build(self):
    pass

  @property
  @abstractmethod
  def clean(self):
    pass

  @property
  @abstractmethod
  def clean(self):
    pass

  @property
  @abstractmethod
  def inputs(self):
    pass

  @property
  @abstractmethod
  def executable(self):
    pass

  @property
  @abstractmethod
  def root(self):
    pass

  @abstractmethod
  def getTime(self,stdout):
    pass

  @abstractmethod
  def extractInputFromCMD(self, cmd):
    pass

  def heatmap(self, df, outfile, feature_name, sizes, logx=False, setTitle=False):
    import matplotlib
    import pandas as pd
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    from matplotlib import rcParams
    import matplotlib.ticker as ticker
    systems=['Power9 + V100','Intel + P100', 'AMD + MI50']
    col_order = ['lassen', 'pascal', 'corona']
    input_sizes = df[feature_name].unique()
    #Count objects
    plot = df.groupby(['System', feature_name, 'Execution Type'])['Policy'].value_counts(normalize=True).copy(deep=True)
    # Set Name of Column
    plot = plot.reset_index(name='% GPU Executions')
    # Drop Static, CPU
    plot = plot[plot['Execution Type'] != 'Static,CPU']
    plot = plot[plot['Execution Type'] != 'Static,GPU']
    # Create 2D -Arrray
    plot = plot.pivot(index=['System', 'Execution Type', 'Policy'], columns=feature_name, values='% GPU Executions').reset_index()
    # Cells which do not have a value means that such an execution never happened. So, set the % to 0.
    plot = plot.replace(np.nan, 0)
    # Ugly code to do fill missing values.
    for e in plot['Execution Type'].unique():
        for s in plot['System'].unique():
            vals= plot.loc[(plot['System'] == s) & (plot['Execution Type'] == e),'Policy'].unique()
            if 'gpu' not in vals:
                for c in input_sizes:
                    # If we do not have a GPU execution lets create a "fake" one with 1 - cpu percent. This is
                    # a binary problem
                    plot.loc[(plot['System'] == s) & (plot['Execution Type'] == e),c] = 1.0 - plot.loc[(plot['System'] == s) & (plot['Execution Type'] == e),c]
                # Now we swapped the percentage from cpu->gpu we need to set the name.
                plot.loc[(plot['System'] == s) & (plot['Execution Type'] == e),'Policy'] = 'gpu' 
    plot = plot[plot['Policy'] != 'cpu']
    for c in input_sizes:
        plot[c] = plot[c] * 100.0
    
    #create figure and #subplots
    f, (axes) = plt.subplots(1, len(plot['System'].unique()), figsize=sizes)
    # Sizes of color bar axes [left, bottom, width, height] 
    cbar_ax = f.add_axes([.92, .36, .01, .24])
    plt.rc('text', usetex=True)
    rcParams['font.family'] = 'sans-serif'
    # Go Over the systems and plot the heatmap

    for s, gp in plot.groupby('System'):
      # get position in the plot grid
      index = col_order.index(s)
      ax = axes[index]
      i = index
      tmp = gp.drop(['System', 'Policy'], axis=1).copy().set_index('Execution Type') 
      print(tmp.columns.values)
      tg = [u"${}$".format(y) for y in tmp.columns.values]
      if logx: 
          tg = [u"$2^{}$".format('{'+str(int(np.log2(y)))+'}') for y in tmp.columns.values]
      rcParams['font.family'] = 'sans-serif'
      sns.set(rc={'figure.figsize':sizes})
      sns.set_style("whitegrid", {'axes.grid' : False})
      with sns.plotting_context(rc={'text.usetex' : True}):
        g = sns.heatmap(tmp, annot=True, fmt=".0f", ax = ax, 
                vmin=0, vmax=100, cbar=True,cbar_ax=cbar_ax,linecolor='white', 
                linewidths=0.5, square=True, cmap=sns.light_palette("seagreen", as_cmap=True),
                cbar_kws={'label': '% Experiments \n Executed on GPU', 'shrink': 10},
                annot_kws={"fontsize":8, 'fontname':"sans-serif"}, xticklabels=tg)
        print(g)
        g.xaxis.set_major_formatter(ticker.FuncFormatter(lambda x,pos: (u'${{:.{:1d}f}}$'.format(int(np.maximum(-np.log10(x),0)))).format(x)))
        print(g.get_xticklabels())
        print(g.get_xticks())
        g.set_yticklabels(g.get_yticklabels(), rotation = 0, fontdict={'size':8, 'family':'sans-serif', 'usetex':True})
        g.set_xticklabels(g.get_xticklabels(), rotation = 30, fontdict={'size':8, 'family':'sans-serif', 'usetex':True})
        if setTitle:
          ax.set_title(systems[index], fontdict={'size':10, 'family':'sans-serif', 'usetex':True})
        else:
            ax.set_title('')
        ax.set_ylabel('', fontdict={'size':8, 'family':'sans-serif', 'usetex':True})
        ax.set_xlabel(feature_name, fontdict={'size':8, 'family':'sans-serif', 'usetex':True})
        if i != 0:
            ax.get_yaxis().set_visible(False)
    plt.yticks(rotation=0)
    cbar_ax.tick_params(labelsize=8)
    cbar_ax.set_ylabel(cbar_ax.get_ylabel(), size=8)
    #Manually adjust space between subplots.
    plt.subplots_adjust(wspace=0.02, hspace=0)
    print(f'{outfile}_heatmap.pdf')
    f.savefig(f'{outfile}_heatmap.pdf',bbox_inches='tight')
    plt.close()

  def scatterplot(self, df, outfile, feature_name, sizes, xAxisTitle, yAxisTitle,  logx=False, xbase=2, logy = False, ybase=2, legend=False, ncol=2, legendPos=[0.555,0.78], setTitle=False, col_order= ['lassen', 'pascal', 'corona'], rows=False):
    import matplotlib
    import pandas as pd
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    from matplotlib import rcParams
    systems=['Power9 + V100','Intel + P100', 'AMD + MI50']
    plt.rc('text', usetex=True)
    rcParams['font.family'] = 'sans-serif'
    sns.set(rc={'figure.figsize':sizes})
    sns.set_style("whitegrid", {'axes.grid' : False})
    with sns.plotting_context(rc={"legend.fontsize":28, 'text.usetex' : True}):
        if rows:
            g = sns.relplot(data=df, x=feature_name, y='Speedup',
                            row='System', hue='Policy',
                            row_order = col_order, 
                            markers=True,
                            style='Policy',
                            edgecolor='black', 
                            palette=self.adaptation_colors,
                            aspect=1.8,
                            alpha=0.9,
                            s=280,
                            lw=6, kind='scatter',
                            facet_kws={'sharey': False, 'sharex': True},
                            legend=legend,
                            )
        else:
            g = sns.relplot(data=df, x=feature_name, y='Speedup',
                            col='System', hue='Policy',
                            col_order = col_order, 
                            markers=True,
                            palette=self.adaptation_colors,
                            style='Policy',
                            edgecolor='black', 
                            aspect=1.6,
                            alpha=0.9,
                            s=280,
                            lw=6, kind='scatter',
                            facet_kws={'sharey': False, 'sharex': True},
                            legend=legend,
                            )
        if legend:
            plt.setp(g._legend.get_title(), fontsize=32)
            for lh in g._legend.legendHandles:
                lh.set_alpha(0.9)
                lh._sizes = [260]
                lh
            sns.move_legend(g,loc='center', title='Policy', fancybox=True,frameon=False, ncol=ncol, handletextpad=0.01, columnspacing=0.5)
            leg = g._legend
            leg.set_bbox_to_anchor(legendPos) 

        axes = g.axes
        for c,s in zip(g.axes.flat,systems):
            c.set_yticklabels(c.get_yticklabels(), fontdict={'size':30})
            c.set_xticklabels(c.get_xticklabels(), fontdict={'size':30},rotation = 30)
            c.yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '${:.3g}$'.format(y)))
            c.xaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda x, _: '${:.3g}$'.format(x)))
            c.axhline(y=1.0, c='gray')
            c.set_xlabel('', fontsize = 34)
            c.set_ylabel('', fontsize = 34)
            if logx:
                c.set_xscale('log', base=xbase)
            if logy:
                c.set_xscale('log', base=ybase)
            if setTitle:
                c.set_title(s, fontsize = 38)
            else:
                c.set_title('')
        print(axes.shape)
        g.set_axis_labels(xAxisTitle, yAxisTitle)
        plt.tight_layout()
        plt.savefig(f'{outfile}_speedup.pdf')
        plt.close()

  def computeSpeedup(self, df, feature_name, baseline='Static,GPU'):
    import pandas as pd
    unique_policies = df['Execution Type'].unique()
    df = df.groupby(['System', 'Execution Type', feature_name]).mean().reset_index()
    df = df.pivot(index=['System', feature_name], columns='Execution Type', values='Execution time (s)').reset_index()
    unique_policies = unique_policies[ unique_policies != baseline]
    for u in unique_policies:
        df[f'Speed Up {u}'] = df[baseline]/df[u] 

    for u in unique_policies:
        df[u] = df[f'Speed Up {u}']
        df = df.drop([f'Speed Up {u}'], axis=1)
    df = df.drop([baseline], axis = 1)
    df = pd.melt(df, id_vars=['System', feature_name], value_name = 'Speedup', var_name = 'Policy', value_vars=unique_policies).reset_index()
    return df

  def computeSpeedUpPerPolicy(self, df, inputName, policyName='Num Team Threads', execType='Execution Type', defThreads=256, defaultExec='Static'):
    import pandas as pd
    oracle = df[df[execType] == 'Oracle']
    online = df[df[execType] == 'Online']
    default = df[((df[policyName] == defThreads) & (df[execType] == defaultExec))]
    default = default.groupby(['System', inputName]).mean().reset_index()
    default[execType] ='default'
    online = online.groupby([execType, 'System', inputName, policyName]).mean().reset_index()
    oracle = oracle.groupby([execType,'System', inputName, policyName]).mean().reset_index()
    oracle = oracle.set_index([ "System", inputName])
    online = online.set_index([ "System", inputName])
    default = default.set_index([ "System", inputName])
    online['Speedup'] = default['Execution time (s)'] / online['Execution time (s)']
    oracle['Speedup'] = default['Execution time (s)'] / oracle['Execution time (s)']
    df = df[((df['Execution Type'] == 'Static'))]
    df = df.groupby(['System', inputName, policyName]).mean().reset_index()
    df['Speedup'] = -1.0
    df = df.set_index(['System', inputName])
    for d in df[policyName].unique():
        df.loc[df[policyName] == d, 'Speedup'] = df.loc[df[policyName] == defThreads, 'Execution time (s)'] / df.loc[df[policyName] == d, 'Execution time (s)']
        df.loc[df[policyName] == d, execType] = f'Static,Best'
    online = online.reset_index()
    oracle = oracle.reset_index()
    df = df.reset_index()
    idx = df.groupby(['System', inputName])['Speedup'].transform(max) == df['Speedup']
    df = df[idx]
    return pd.concat([online, oracle, df.reset_index()])

  def scatterplotPerPolicy(self, df, outfile, feature_name, sizes, xAxisTitle, yAxisTitle, hue='Execution Type', style='Num Team Threads',  logx=False, xbase=2, logy = False, ybase=2, legend=False, setTitle=False, rotation=0):
    import matplotlib
    import matplotlib.pyplot as plt
    from matplotlib.colors import ListedColormap
    from matplotlib import rcParams
    from matplotlib.lines import Line2D
    sns.set_style("whitegrid")
    plt.rc('text', usetex=True)
    rcParams['font.family'] = 'sans-serif'
    sns.set(rc={'figure.figsize':sizes})
    sns.set_style("whitegrid", {'axes.grid' : False})
    systems=['Power9 + V100','Intel + P100', 'AMD + MI50']
    markers = { 32 : '*', 64 : 'd', 128 : '>', 256 : '<', 512 : 'X', 1024 : 'P' , 'varies' : 's'}  
    color_codes = (sns.color_palette("cubehelix", 3))
    hue_order= ['Online', 'Oracle', 'Static,Best']
    colors=dict()
    for c,h in zip(color_codes, hue_order):
        colors[h] = c

    with sns.plotting_context(rc={'text.usetex' : True}):
        g = sns.relplot(data=df, x=feature_name, 
                        col_order = ['lassen', 'pascal', 'corona'],
                        y='Speedup',
                        palette=colors,
                        hue_order=hue_order,
                        col='System', 
                        hue=hue, 
                        style=style, 
                        markers=markers,
                        edgecolor='black',
                        aspect=1.6,
                        alpha=0.9,
                        s=280,
                        lw=6, kind='scatter',
                        facet_kws={'sharey': True, 'sharex': True},
                        legend=legend)

        for i,(c,s) in enumerate(zip(g.axes.flat,systems)):
            handles, labels = c.get_legend_handles_labels() 
            print(handles, labels)
            if i == 1 and legend:
              g.legend.remove()
              legendsm = []
              legendsc = []
              legendPos=[0.38,0.99]
              for k,v in markers.items():
                legendsm.append(Line2D([0], [0], lw=6, markersize=14, marker=v, color='gray', mec='black',  label=k, linestyle='None'))     
              for k,v in colors.items():
                legendsc.append(Line2D([0], [0], lw=6, markersize=14, marker='o', color=v, mec='black',  label=k, linestyle='None'))     

              thread_leg = c.legend(handles=legendsm, loc='upper left', title='Num Team Threads',fontsize=26, ncol=2, frameon=False, handletextpad=0.1)
              thread_leg.set_bbox_to_anchor(legendPos)
              plt.setp(thread_leg.get_title(), fontsize=28)
              c.add_artist(thread_leg)
              legendPos=[0.01,0.99]
              policy_leg = c.legend(handles=legendsc, loc='upper left', title='Policy',fontsize=26, frameon=False, handletextpad=0.01)
              policy_leg.set_bbox_to_anchor(legendPos)
              plt.setp(policy_leg.get_title(), fontsize=28)
              c.add_artist(policy_leg)


            c.set_yticklabels(c.get_yticklabels(), fontdict={'size':30})
            c.set_xticklabels(c.get_xticklabels(), fontdict={'size':30},rotation = rotation)
            c.yaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda y, _: '${:.3g}$'.format(y)))
            c.xaxis.set_major_formatter(matplotlib.ticker.FuncFormatter(lambda x, _: '${:.3g}$'.format(x)))
            c.axhline(y=1.0, c='gray')
            c.set_xlabel('', fontsize = 34)
            c.set_ylabel('', fontsize = 34)
            if logx:
                c.set_xscale('log', base=xbase)
            if logy:
                c.set_xscale('log', base=ybase)
            if setTitle:
                c.set_title(s, fontsize = 38)
            else:
                c.set_title('')

        g.set_axis_labels(xAxisTitle, yAxisTitle)
        plt.tight_layout()
        plt.savefig(f'{outfile}_threads_speedup.pdf')
        plt.close()

