#!/bin/bash

benches=(lulesh-omp amgmk-omp xsbench-omp)
names=(LULESH amgmk XSBench)

for i in ${!benches[@]}; do
    b=${benches[$i]}
    n=${names[$i]}
    echo $b,$n
    ./harness.py -b gpu_cpu/$b/ -r new_gpu_results_2/ -a visualize -j 1
    pdfcrop new_gpu_results_2/${n}_speedup.pdf
    pdfcrop new_gpu_results_2/${n}_heatmap.pdf
done 
