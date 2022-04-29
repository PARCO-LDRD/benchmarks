#!/bin/bash

benches=(lulesh-omp heat-omp fluidsim-omp amgmk-omp)
names=(LULESH heat fluidSim amgmk)

for i in ${!benches[@]}; do
    b=${benches[$i]}
    n=${names[$i]}
    echo $b,$n
    ./harness.py -b gpu_threads/$b/ -r new_threads_results/ -a visualize -j 1
    pdfcrop new_threads_results/${n}_threads_speedup.pdf
done 
