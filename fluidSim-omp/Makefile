#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
CC        = clang++
OPTIMIZE  = yes 
DEBUG     = no
DEVICE    = apollo
VERIFY    = no 

FOPENMP?=-fopenmp -fopenmp-targets=nvptx64 -Xopenmp-target -march=sm_70

#===============================================================================
# Program name & source code list
#===============================================================================

program = main

obj = main.o kernels.o reference.o

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
CFLAGS := -std=c++14 -Wall -include utils.h -O3

# Linker Flags
LDFLAGS = -lapollo 

# Debug Flags
ifeq ($(DEBUG),yes)
  CFLAGS += -g -DDEBUG
  LDFLAGS  += -g
endif


# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  CFLAGS += -O3
endif

ifeq ($(VERIFY),yes)
  CFLAGS += -DVERIFY
endif

ifeq ($(DEVICE),gpu)
  CFLAGS +=-fiopenmp -fopenmp-targets=spir64 -D__STRICT_ANSI__
else
ifeq ($(DEVICE), apollo)
  CFLAGS +=${FOPENMP}
else
  CFLAGS +=-qopenmp
endif
endif
#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj)
	$(CC) $(CFLAGS) $(obj) -o $@ $(LDFLAGS)

kernels.o: kernels.cpp utils.h
	$(CC) $(CFLAGS) -c $< -o $@

main.o: main.cpp utils.h
	$(CC) $(CFLAGS) -c $< -o $@

reference.o: reference.cpp
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program) 10000
