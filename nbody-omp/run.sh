#!/bin/bash

source ~/set.clang.offload

# build GPU version
make clean
make -f Makefile.lassen
# build CPU version
make clean
make -f Makefile.lassen.cpu

#----------------------------
echo "Running CPU version"
for size in {16000..160000..16000}; do
#  for repeat in 1 2 3 ;   do
 for repeat in 1;   do
     echo "running Repeat=$repeat, problem size=$size"
    ./main.cpu $size 100
 done
done
#----------------------------
echo "Running GPU version"
for size in {16000..160000..16000}; do
 for repeat in 1;   do
     echo "running Repeat=$repeat, problem size=$size"
    ./main.gpu $size 100
 done
done
