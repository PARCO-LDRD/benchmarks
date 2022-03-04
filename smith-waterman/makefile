SHELL=/bin/bash

# AMD GPU
ifeq ($(findstring corona,$(HOSTNAME)), corona)
  CC=/opt/rocm-4.1.0/llvm/bin/clang++
  CXXFLAGS=-O3 -target x86_64-pc-linux-gnu -fopenmp -fopenmp-version=50 -fopenmp-targets=amdgcn-amd-amdhsa -Xopenmp-target=amdgcn-amd-amdhsa -march=gfx906

# tux385  
else ifeq ($(findstring tux385,$(HOSTNAME)), tux385) 
  CC=g++
  CXXFLAGS=-O3 -fopenmp
else # on lassen, Nvidia GPU  
#In the end, we use default clang++ + custom build of OpenMP runtime to make Smith Waterman code work!!

# system default clang++'s runtime has problem with smith waterman code
  CC=clang++
# we cannot use master branch's clang++, which has a serious bug also
#  CC=/g/g17/liao6/workspace-wsa/opt/llvm-master-offload/bin/clang++
  CXXFLAGS=-O3 -g -fopenmp -fopenmp-targets=nvptx64 
endif 

CXXFLAGS+=-DSKIP_BACKTRACK=0

# APOLLO_HOME is your environment variable indicating the path to Apollo Installation
# e.g.: 
#   export APOLLO_HOME=/home/xyz/opt/apollo
APOLLO_DIR=$(APOLLO_HOME)
INC_DIR=$(APOLLO_DIR)/include 
LIB_DIR=$(APOLLO_DIR)/lib
LIBS=-lapollo

LINK_FALGS= -L$(LIB_DIR) -Wl,--rpath,$(LIB_DIR)

ifeq ($(findstring corona,$(HOSTNAME)), corona)
# must use alternative libstdc++ /usr/tce/packages/gcc/gcc-4.9.3/lib64/ 
# # opencv and apollo are built using gcc 4.9.3
 LINK_FALGS+= -L/usr/tce/packages/gcc/gcc-4.9.3/lib64/ -Wl,--rpath,/usr/tce/packages/gcc/gcc-4.9.3/lib64/
else # on lassen 
# using my own clang installation on lassen
# LINK_FALGS+=-Wl,--rpath,/g/g17/liao6/workspace-wsa/opt/llvm-master-offload/lib
endif  


CPP_SRC_FILES = \
hasGPU.cpp \
omp_smithW-declare-adaptation-v1-apollo.cpp \
omp_smithW-declare-adaptation-v1-apollo-nEle.cpp \
omp_smithW-declare-adaptation-v2-apollo.cpp \
smithw-serial.cpp \
smithw-omp-cpu.cpp \
smithw-omp-offload-optimized.cpp \
smithw-omp-offload-optimized-inlined.cpp

EXE_FILES = $(addsuffix .out, $(basename $(CPP_SRC_FILES)))

%.out:%.cpp
	$(CC) $(CXXFLAGS) -I$(INC_DIR) $(LINK_FALGS) $^ -o $@ $(LIBS)

all: $(EXE_FILES) 
test: hasGPU.out
	./$<
.PHONY: clean run check
# TEST cross execution: save region information from current execution
run2: daxpy-v2
	APOLLO_CROSS_EXECUTION=1 ./$^ 10000000
clean:
	rm -rf daxpy daxpy-v2 *.out input.data.pdf input.data.eps input.data

