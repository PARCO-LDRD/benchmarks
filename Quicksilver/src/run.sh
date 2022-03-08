#!/bin/bash -v
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/tce/packages/cuda/cuda-10.1.243/lib64

#export OMP_NUM_THREADS=1
# gpu version, with gpu enabled
#./qs.gpu -i ../Examples/CORAL2_Benchmark/Problem1/Coral2_P1_1.inp &> qs.gpu.clang-gpu.lassen.p1_1.output.txt
CONF_FILE="-i ../Examples/CORAL2_Benchmark/Problem2/Coral2_P2.inp"

particle_count_base=53240

for (( i=1; i<=5; i++ ));
do
    let "particle_count=$particle_count_base*$i"
#    ./bin/qs.gpu $CONF_FILE -X 1  -Y 1  -Z 1  -x 11  -y 11  -z 11  -I 1  -J 1  -K 1  -n $particle_count &> lassen.ml-llvm.qs.gpu.p2.mutiply-$i.output.txt
# OMP version
    ./bin/qs.cpu.omp $CONF_FILE -X 1  -Y 1  -Z 1  -x 11  -y 11  -z 11  -I 1  -J 1  -K 1  -n $particle_count &> lassen.ml-llvm.qs.cpu.omp.p2.mutiply-$i.output.txt
# serial version
# ./bin/qs.cpu.serial $CONF_FILE -X 1  -Y 1  -Z 1  -x 11  -y 11  -z 11  -I 1  -J 1  -K 1  -n $particle_count &> lassen.ml-llvm.qs.cpu.serial.p2.mutiply-$i.output.txt    
done


