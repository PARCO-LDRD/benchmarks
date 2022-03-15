CPP=clang++
FOPENMP?=-fopenmp -fopenmp-targets=nvptx64 -Xopenmp-target -march=sm_70
CPPFLAGS ?= -O3 ${FOPENMP} 
LD_FLAGS= -lapollo
SRCS := vecAdd.cpp 
BINS:= vecAdd 
OBJS:= vecAdd.o 

.PHONY = all info
.SECONDARY: $(OBJS)

all: ${BINS}

${BINS}: ${OBJS} 
	${CPP} ${CPPFLAGS} $< -o $@ ${LD_FLAGS}

${OBJS}: ${SRCS}
	${CPP} ${CPPFLAGS} -c $< -o $@ 

clean:
	@echo "Cleaning up ..."
	rm -rvf  $(OBJS) ${BINS} 

info:
	$(info $$BINS is [${BINS}])
	$(info $$SRCS is [${SRCS}])
	$(info $$OBJS is [${OBJS}])

