#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
CC        = clang++
OPTIMIZE  = yes
DEBUG     = no 
DEVICE    = apollo

FOPENMP?= -fopenmp -fopenmp-version=51 -fopenmp-targets=nvptx64 -Xopenmp-target -march=sm_70

#===============================================================================
# Program name & source code list
#===============================================================================

program = main

source = 3D.cpp 3D_helper.cpp
obj = $(source:.cpp=.o)

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
CFLAGS := -Wall 

# Linker Flags
LDFLAGS = -lapollo 

# Debug Flags
ifeq ($(DEBUG),yes)
  CFLAGS += -g
  LDFLAGS  += -g
endif


# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  CFLAGS += -O3
endif

ifeq ($(DEVICE),gpu)
  CFLAGS +=-fopenmp -fopenmp-targets=nvptx64-nvidia-cuda
endif

ifeq ($(DEVICE), apollo)
  CFLAGS +=${FOPENMP} -O3
endif

#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj) Makefile
	$(CC) $(CFLAGS) $(obj) -o $@ $(LDFLAGS)

%.o: %.cpp Makefile
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj) output.out

run: $(program)
	./$(program) 512 8 5000 ../data/hotspot3D/power_512x8 ../data/hotspot3D/temp_512x8 output.out

