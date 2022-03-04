
smithw-omp-offload-optimized.cpp :  This version has some issue: the builtin verification does not pass.

smithw-omp-offload-optimized-inlined.cpp:  This version inlines all functions. It passes builtin correctness verification.

smithw-omp-adaptive.cpp : using declare adaptation+ metadirective, based on the inlined version.
