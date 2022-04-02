#!/bin/bash

#jsrun -n1 -a4 -c4 -g1 -S resources ./run.sh
policy=$1

echo "rank $OMPI_COMM_WORLD_RANK"
export APOLLO_POLICY_MODEL="Static,policy=$policy"
#export CUDA_VISIBLE_DEVICES=0
#export CUDA_VISIBLE_DEVICES=$OMPI_COMM_WORLD_RANK
./XSBench -m event -s small -l 150000000
