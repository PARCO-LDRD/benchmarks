#===============================================================================
# User Options
#===============================================================================

COMPILER  = llvm
OPTIMIZE  = yes
DEBUG     = no
PROFILE   = no
APOLLO_LIBDIR = /p/vast1/ggeorgak/projects/apollo/apollo/build-lassen/install/lib

#===============================================================================
# Program name & source code list
#===============================================================================

program = rsbench

source = \
main.c \
simulation.c\
io.c \
init.c \
material.c \
utils.c

obj = $(source:.c=.o)

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
CFLAGS := -std=gnu99 -Wall

# Linker Flags
LDFLAGS = -lm -L $(APOLLO_LIBDIR) -lapollo

# Intel Compiler
ifeq ($(COMPILER),intel)
  CC = icx 
  CFLAGS += -fiopenmp -fopenmp-targets=spir64 -D__STRICT_ANSI__ 
endif

# LLVM Compiler Targeting A100 -- Change SM Level to Target Other GPUs
ifeq ($(COMPILER),llvm)
  CC = clang
  CFLAGS += -O3 -fopenmp -fopenmp-targets=nvptx64-nvidia-cuda
endif

# IBM XL Compiler
ifeq ($(COMPILER),ibm)
  CC = xlc_r
  CFLAGS += -qsmp=omp -qoffload
endif

# NVIDIA Compiler Targeting A100 -- Change SM Level to Target Other GPUs
ifeq ($(COMPILER),nvidia)
  CC = nvc
  CFLAGS += -mp=gpu -Minfo=mp -gpu=cc80
endif

# AOMP Targeting MI100 -- Change march to Target Other GPUs
ifeq ($(COMPILER),amd)
  CC = clang
  CFLAGS += -fopenmp -fopenmp-targets=amdgcn-amd-amdhsa -Xopenmp-target=amdgcn-amd-amdhsa -march=gfx908
endif

# Debug Flags
ifeq ($(DEBUG),yes)
  CFLAGS += -g
  LDFLAGS += -g
endif

# Profiling Flags
ifeq ($(PROFILE),yes)
  CFLAGS += -pg
  LDFLAGS  += -pg
endif

#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj) rsbench.h Makefile
	$(CC) $(CFLAGS) $(obj) -o $@ $(LDFLAGS)

%.o: %.c rsbench.h Makefile
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf rsbench $(obj)

edit:
	vim -p $(source) rsbench.h

run:
	./rsbench
