#!/bin/bash

benches=(xsbench-omp rsbench-omp)
names=(XSBench RSBench)

for i in ${!benches[@]}; do
    b=${benches[$i]}
    n=${names[$i]}
    echo $b,$n
    ./harness.py -b gpu_cpu_coexec/$b/ -r new_coexec_results_2/ -a visualize -j 1
    pdfcrop new_coexec_results_2/${n}_coexec_speedup.pdf
done 
