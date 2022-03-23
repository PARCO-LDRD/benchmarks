#!/usr/bin/env python3

import argparse
from sklearn.model_selection import KFold
import numpy as np
import json
import hashlib
import pandas as pd
import glob

'''
Reads data from CSV traces and creates a loadable dataset for training models.
'''

def print_to_str(index, features, policy, xtime):
    features = [str(n) for n in features]
    output = '\t' + str(index) + ': { features: [ '
    for fi in features:
        output += fi + ', '
    output += ']'
    output += ', policy: ' + str(policy)
    output += ', xtime: ' + str(xtime)
    output += ' },\n'
    return output

def agg_by_none(data_per_region):
    output = '# agg by none\n'

    output += 'data: {\n'
    feature_cols = list(data_per_region.columns[5:-2])

    # Output all the data points.
    for i, row in data_per_region.iterrows():
        output += print_to_str(i, row[feature_cols], row['policy'], row['xtime'])

    output += '}\n\n'
    return output

def agg_by_mean(data_per_region):
    output = '# agg by mean\n'

    output += 'data: {\n'
    feature_cols = list(data_per_region.columns[5:-2])

    # Group by features and policy to extract policies per feature with
    # their mean xtime.
    groups = data_per_region.groupby(by=feature_cols + ['policy'])
    index = 0
    for name, g in groups:
        features = name[:-1]
        policy = name[-1]
        xtime = g['xtime'].mean()
        output += print_to_str(index, features, policy, xtime)
        index += 1

    output += '}\n\n'
    return output

def agg_by_min(data_per_region):
    output = '# agg by min\n'

    output += 'data: {\n'
    feature_cols = list(data_per_region.columns[5:-2])

    groups = data_per_region.groupby(by=feature_cols)
    index = 0
    for _, g in groups:
        # Find the index of the minimum xtime.
        min_g = g.loc[g['xtime'].idxmin()]

        # Extract data from the minimum xtime data point.
        features = min_g[feature_cols]
        policy = min_g['policy']
        xtime = min_g['xtime']
        output += print_to_str(index, features, policy, xtime)
        index += 1

    output += '}\n\n'
    return output

def agg_by_mean_min(data_per_region):
    output = '# agg by mean_min\n'

    output += 'data: {\n'
    feature_cols = list(data_per_region.columns[5:-2])

    groups = data_per_region.groupby(by=feature_cols)
    index = 0
    for name, g in groups:
        # Group by policy to compute the mean xtime.
        g2 = g.groupby(by=['policy'])
        mean_g = g2['xtime'].mean()

        # Find the index (equals the policy) with the minimum mean xtime.
        idxmin = mean_g.idxmin()

        # Create a list of feature values if there is a single feature.
        if len(feature_cols) > 1:
            features = name
        else:
            features = [name]
        policy = idxmin
        xtime = mean_g.loc[idxmin]
        output += print_to_str(index, features, policy, xtime)
        index += 1

    output += '}\n\n'
    return output

def read_tracefiles(tracefiles):
    data = pd.DataFrame()

    for f in tracefiles:
        try:
            csv = pd.read_csv(f, sep=' ', header=0, index_col=False)
        except pd.errors.EmptyDataError:
            print('Warning: no data in', f)

        data = pd.concat([data, csv], ignore_index=True, sort=False)

    return data

def read_tracedirs(tracedirs):
    data = pd.DataFrame()

    for dir in tracedirs:
        globlist = glob.glob('%s/trace*.csv' % (dir))
        data_dir = read_tracefiles(globlist)
        data = pd.concat([data, data_dir], ignore_index=True, sort=False)

    return data

def create_apollo_model(tracedirs, agg = 'mean-min'):
    data = read_tracedirs(tracedirs)
    regions = data['region'].unique().tolist()
    models = {}
    for r in regions:
        data_per_region = data.loc[data['region'] == r].dropna(axis='columns').reset_index()
        if agg == 'none':
            output = agg_by_none(data_per_region)
        elif agg == 'mean':
            output = agg_by_mean(data_per_region)
        elif agg == 'min':
            output = agg_by_min(data_per_region)
        elif agg == 'mean-min':
            output = agg_by_mean_min(data_per_region)
        else:
            raise RuntimeError('Invalid aggregation args ' + str(agg))
        models[r] = output
    return models

def get_adaptive_apollo_runs(scenarios,num_folds=5):
    # Find CSV experiments.
    experiments_csv = [s for s in scenarios['experiments'] if s['type'] == 'csv' ]
    # Extract the unique cmds of CSV experiments that correspond to the unique inputs.
    set_commands_csv = np.array(list(set([e['cmd'] for e in experiments_csv])))

    kfold = KFold(n_splits=int(num_folds), shuffle=True, random_state=1)

    index = 0
    dynamic_experiments = []
    # Split to k-folds the cmds (inputs).
    for train, test in kfold.split(set_commands_csv):
        # Stores the training experiments including all Static policies for each unique cmd (input).
        experiments_train = []
        for c in set_commands_csv[train]:
            experiments_train += [e for e in experiments_csv if e['cmd'] == c]
        tracedirs = [scenarios['root_dir'] + '/runs/' + e['hash'] + '/trace' for e in experiments_train]
        models = create_apollo_model(tracedirs)
        train_hash = [e['hash'] for e in experiments_train]

        # Stores the testing experiments.
        experiments_test = []
        for c in set_commands_csv[test]:
            experiments_test += [e for e in experiments_csv if e['cmd'] == c]
        for e in experiments_test:
            dExp = {}
            dExp['train_hash'] = train_hash
            dExp['cmd'] = e['cmd']
            if e['regions'].keys() != models.keys():
                print(e['regions'].keys())
                print(models.keys())
                raise RuntimeError('Model region names and binary (experiment) region name differ')
            tmp = {}
            for k in models.keys():
                tmp[k] = {}
                tmp[k]['policy'] = 'adaptive'
                tmp[k]['model'] = models[k]
                tmp[k]['execution_time'] = []
                tmp[k]['model_hash'] = hashlib.sha256(models[k].encode('utf-8')).hexdigest()
            dExp['regions'] = tmp
            dynamic_experiments.append(dExp)
    return dynamic_experiments

def get_oracle_apollo_runs(scenarios):
    oracle_experiments = []
    experiments_csv = np.array([s for s in scenarios['experiments'] if s['type'] == 'csv' ])
    tracedirs = [scenarios['root_dir'] + '/runs/' + e['hash'] + '/trace' for e in experiments_csv]
    models = create_apollo_model(tracedirs)
    train_hash = [e['hash'] for e in experiments_csv]
    for e in experiments_csv:
        dExp = {}
        dExp['train_hash'] = train_hash
        dExp['cmd'] = e['cmd']
        if e['regions'].keys() != models.keys():
            print(e['regions'].keys())
            print(models.keys())
            raise RuntimeError('Model region names and binary (experiment) region name differ')
        tmp = {}
        for k in models.keys():
            tmp[k] = {}
            tmp[k]['policy'] = 'oracle'
            tmp[k]['model'] = models[k]
            tmp[k]['execution_time'] = []
            tmp[k]['model_hash'] = hashlib.sha256(models[k].encode('utf-8')).hexdigest()
        dExp['regions'] = tmp
        oracle_experiments.append(dExp)
    return oracle_experiments
