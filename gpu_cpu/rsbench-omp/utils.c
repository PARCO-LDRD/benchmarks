#include "rsbench.h"

size_t get_mem_estimate( Input input )
{
	size_t poles = input.n_nuclides * input.avg_n_poles * sizeof(Pole) + input.n_nuclides * sizeof(Pole *);
	size_t windows = input.n_nuclides * input.avg_n_windows * sizeof(Window) + input.n_nuclides * sizeof(Window *);
	size_t pseudo_K0RS = input.n_nuclides * input.numL * sizeof( double ) + input.n_nuclides * sizeof(double);
	size_t other = input.n_nuclides * 2 * sizeof(int);

	size_t total = poles + windows + pseudo_K0RS + other;
	
	return total;
}

double get_time(void)
{
	struct timeval tv;

	gettimeofday(&tv, NULL);
  return tv.tv_sec*(uint64_t)1000000+tv.tv_usec; 
}
