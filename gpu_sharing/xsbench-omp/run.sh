#!/bin/bash

#jsrun -n1 -a4 -c4 -g1 -S resources ./run.sh

echo "rank $OMPI_COMM_WORLD_RANK"
export APOLLO_POLICY_MODEL="Static,policy=2"
#export CUDA_VISIBLE_DEVICES=0
#export CUDA_VISIBLE_DEVICES=$OMPI_COMM_WORLD_RANK
./XSBench -m event -s small -l 150000000
