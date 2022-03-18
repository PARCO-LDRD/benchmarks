#===============================================================================
# User Options
#===============================================================================

# Compiler can be set below, or via environment variable
CC        = clang++
OPTIMIZE  = yes 
DEBUG     = no
DEVICE    = apollo

#===============================================================================
# Program name & source code list
#===============================================================================
FOPENMP?= -fopenmp -fopenmp-targets=nvptx64 -Xopenmp-target -march=sm_70

program = haccmk

source = haccmk.cpp

obj = $(source:.cpp=.o)

#===============================================================================
# Sets Flags
#===============================================================================

# Standard Flags
CFLAGS := -Wall  

# Linker Flags
LDFLAGS = -lapollo -lm 

# Debug Flags
ifeq ($(DEBUG),yes)
  CFLAGS += -g
  LDFLAGS += -g
endif


# Optimization Flags
ifeq ($(OPTIMIZE),yes)
  CFLAGS += -O3 
endif

ifeq ($(DEVICE),gpu)
  CFLAGS +=-qnextgen -fiopenmp -fopenmp-targets=spir64 -D__STRICT_ANSI__
else
ifeq ($(DEVICE), apollo)
  CFLAGS +=${FOPENMP} -O3 
else
  CFLAGS +=-qopenmp
endif
endif

#===============================================================================
# Targets to Build
#===============================================================================

$(program): $(obj) Makefile
	$(CC) $(CFLAGS) $(obj) -o $@ $(LDFLAGS)

%.o: %.cpp Makefile
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(program) $(obj)

run: $(program)
	./$(program)

