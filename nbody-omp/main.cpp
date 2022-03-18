//==============================================================
// Copyright © 2020 Intel Corporation
//
// SPDX-License-Identifier: MIT
// =============================================================

#include <iostream>

#include "GSimulation.hpp"
#include <omp.h>

int main(int argc, char** argv) {
  int n;      // number of particles
  int nstep;  // number ot integration steps

  GSimulation sim;

#ifdef DEBUG
  char* env = std::getenv("SYCL_BE");
  std::cout << "[ENV] SYCL_BE = " << (env ? env : "<not set>") << "\n";
#endif

  if (argc > 1) {
    n = std::atoi(argv[1]);
    sim.SetNumberOfParticles(n);
    if (argc == 3) {
      nstep = std::atoi(argv[2]);
      sim.SetNumberOfSteps(nstep);
    }
  }

#if defined(_OPENMP)
#pragma omp parallel  
#pragma omp master  
  printf ("Using OpenMP Threads count=%d\n", omp_get_num_threads());
#endif /* _OPENMP */

  sim.Start();

  return 0;
}
