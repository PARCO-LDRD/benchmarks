import matplotlib
import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.colors import ListedColormap
import seaborn as sns
import glob

dfs = []
for pk in glob.glob("./gpu_cpu/*.pkl"):
    print(pk)
    df = pd.read_pickle(pk)
    print(df)
    dfs.append(df)

df = pd.concat(dfs)
#df = df[df.Benchmark != 'fluidSim']
unique_policies=['Adaptive-25',  'Adaptive-50',  'Adaptive-75', 'Oracle', 'cpu']
df = pd.melt(df, id_vars=['System', 'Benchmark'], value_name = 'Speedup', var_name = 'Policy', value_vars=unique_policies).reset_index()
print(df)
g= sns.catplot(x='Benchmark', y='Speedup', hue='Policy', data=df, col='System', kind='boxen',sharey=False) 
plt.tight_layout()
plt.savefig(f'cpu_gpu_summar.pdf')
plt.close()



