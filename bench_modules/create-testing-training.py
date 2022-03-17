#!/usr/bin/env python3

import argparse
from tkinter import W
from sklearn.model_selection import KFold
import numpy as np
import json
import hashlib

def main():
    parser = argparse.ArgumentParser(
        description='Create testing and training scnearia.')
    parser.add_argument('--scenarios',
                        help='the scenarios.json file', required=True)
    parser.add_argument('--k',
                        help='percentage of scenarios for testing', required=True)
    args = parser.parse_args()

    with open(args.scenarios, 'r') as f:
        scenarios = json.load(f)

    experiments_csv = np.array([s for s in scenarios['experiments'] if s['type'] == 'csv' ])

    print('len', len(experiments_csv))

    kfold = KFold(int(args.k), True, 1)

    index = 0
    for train, test in kfold.split(experiments_csv):
        tracedirs = [scenarios['root_dir'] + '/runs/' + e['hash'] + '/trace' for e in experiments_csv[train]]
        # popen('create-dataset.py', tracedirs, --agg mean-min) -> Dataset-<region>.yaml

        testing_dict = { 'root_dir' : scenarios['root_dir'], 'experiments' : [] }

        # Create experiments.
        for e in experiments_csv[test]:
            experiment = {'cmd': e['cmd'],
                          'executed': False, 'regions': e['regions'], # change policy
                          'type' : 'Application Time'}
            # apollo-env = APOLLO_POLICY_MODEL=DecisionTree,load-dataset
            testing_dict.experiments.append()

        input('key...')
        index += 1


if __name__ == '__main__':
    main()