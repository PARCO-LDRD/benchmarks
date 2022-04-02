/*BHEADER****************************************************************
 * (c) 2007   The Regents of the University of California               *
 *                                                                      *
 * See the file COPYRIGHT_and_DISCLAIMER for a complete copyright       *
 * notice and disclaimer.                                               *
 *                                                                      *
 *EHEADER****************************************************************/

//--------------
//  A micro kernel 
//--------------
#include <stdio.h>
#include <stdlib.h>

#ifdef _OPENMP
#include <omp.h>
#else
#include <chrono>
#endif

#include "headers.h"

// CUDA/HIP block size or OpenCL work-group size
#define BLOCK_SIZE 256

// 
const int testIter   = 5000;
double totalWallTime = 0.0;

// 
void test_Matvec();
void test_Relax(int nx, int ny, int nz);
void test_Axpy();

//
int main(int argc, char *argv[])
{
  if (argc < 4) {
    printf("Usage: ./AMGmk <nx> <ny> <nz>\n");
    return 1;
  }

  int nx = atoi(argv[1]);
  int ny = atoi(argv[2]);
  int nz = atoi(argv[3]);

#ifdef _OPENMP
  double t0        = 0.0,
         t1        = 0.0;
#else
  printf("**** Warning: OpenMP is disabled ****\n");
#endif

  double del_wtime = 0.0;

#ifdef _OPENMP
  int  max_num_threads;
#endif


  printf("\n");
  printf("//------------ \n");
  printf("// \n");
  printf("//  CORAL  AMGmk Benchmark Version 1.0 \n");
  printf("// \n");
  printf("//------------ \n");

  printf("\n testIter   = %d \n\n", testIter );  

 
#ifdef _OPENMP
  printf("\n testIter   = %d \n\n", testIter );  
  #pragma omp parallel
     #pragma omp master
        max_num_threads = omp_get_num_threads();
   printf("\nmax_num_threads = %d \n\n",max_num_threads );
#endif


#ifdef _OPENMP
  t0 = omp_get_wtime();
#else
  auto t0 = std::chrono::steady_clock::now();
#endif

  // Matvec
  //totalWallTime = 0.0;
 
  //test_Matvec();

  //printf("\n");
  //printf("//------------ \n");
  //printf("// \n");
  //printf("//   MATVEC\n");
  //printf("// \n");
  //printf("//------------ \n");

  //printf("\nWall time = %f seconds. \n", totalWallTime);


  // Relax
  totalWallTime = 0.0;

  test_Relax(nx, ny, nz);

  printf("\n");
  printf("//------------ \n");
  printf("// \n");
  printf("//   Relax nx %d ny %d nz %d\n", nx, ny, nz);
  printf("// \n");
  printf("//------------ \n");

  printf("\nWall time = %f seconds. \n", totalWallTime);


  // Axpy
  //totalWallTime = 0.0;
 
  //test_Axpy();

  //printf("\n");
  //printf("//------------ \n");
  //printf("// \n");
  //printf("//   Axpy\n");
  //printf("// \n");
  //printf("//------------ \n");

  //printf("\nWall time = %f seconds. \n", totalWallTime);

#ifdef _OPENMP
  t1 = omp_get_wtime();
  del_wtime = t1 - t0;
#else
  auto t1 = std::chrono::steady_clock::now();
  std::chrono::duration<double> diff = t1 - t0;
  del_wtime = diff.count();
#endif


  printf("\nTotal Wall time = %f seconds. \n", del_wtime);

  return  0;
}

void test_Matvec()
{
#ifdef _OPENMP
  double t0 = 0.0,
         t1 = 0.0;
#endif

  hypre_CSRMatrix *A;
  hypre_Vector *x, *y, *sol;
  int nx, ny, nz, i;
  double *values;
  double *y_data, *sol_data;
  double error, diff;

  nx = 50;  /* size per proc nx*ny*nz */
  ny = 50;
  nz = 50;

  values = hypre_CTAlloc(double, 4);
  values[0] = 6; 
  values[1] = -1;
  values[2] = -1;
  values[3] = -1;

  A = GenerateSeqLaplacian(nx, ny, nz, values, &y, &x, &sol);

  hypre_SeqVectorSetConstantValues(x,1);
  hypre_SeqVectorSetConstantValues(y,0);

#ifdef _OPENMP
  t0 = omp_get_wtime();
#else
  auto t0 = std::chrono::steady_clock::now();
#endif

  for (i=0; i<testIter; ++i)
      hypre_CSRMatrixMatvec(1,A,x,0,y);

#ifdef _OPENMP
  t1 = omp_get_wtime() ;
  totalWallTime += t1 - t0;
#else
  auto t1 = std::chrono::steady_clock::now();
  std::chrono::duration<double> tdiff = t1 - t0;
  totalWallTime += tdiff.count();
#endif

 
  y_data = hypre_VectorData(y);
  sol_data = hypre_VectorData(sol);

  error = 0;
  for (i=0; i < nx*ny*nz; i++)
  {
      diff = fabs(y_data[i]-sol_data[i]);
      if (diff > error) error = diff;
  }
     
  if (error > 0) printf(" \n Matvec: error: %e\n", error);

  hypre_TFree(values);
  hypre_CSRMatrixDestroy(A);
  hypre_SeqVectorDestroy(x);
  hypre_SeqVectorDestroy(y);
  hypre_SeqVectorDestroy(sol);

}

void test_Relax(int nx, int ny, int nz)
{
#ifdef _OPENMP
  double t0 = 0.0,
         t1 = 0.0;
#endif

  hypre_CSRMatrix *A;
  hypre_Vector *x, *y, *sol;
  //int nx, ny, nz;
  double *values;
  double diff, error;

  //nx = 50;  /* size per proc nx*ny*nz */
  //ny = 50;
  //nz = 50;

  values = hypre_CTAlloc(double, 4);
  values[0] = 6; 
  values[1] = -1;
  values[2] = -1;
  values[3] = -1;

  A = GenerateSeqLaplacian(nx, ny, nz, values, &y, &x, &sol);

  hypre_SeqVectorSetConstantValues(x,1);

#ifdef _OPENMP
  t0 = omp_get_wtime();
#else
  auto t0 = std::chrono::steady_clock::now();
#endif

  double         *A_diag_data  = hypre_CSRMatrixData(A);
  int            *A_diag_i     = hypre_CSRMatrixI(A);
  int            *A_diag_j     = hypre_CSRMatrixJ(A);

  int             n       = hypre_CSRMatrixNumRows(A);
  int             nonzero = hypre_CSRMatrixNumNonzeros(A);

  double         *u_data  = hypre_VectorData(x);
  //int         u_data_size  = hypre_VectorSize(x);

  double         *f_data  = hypre_VectorData(sol);
  //int         f_data_size  = hypre_VectorSize(sol);

  int             grid_size = nx*ny*nz;

  int cpu_iters_per_policy[] = { 0, static_cast<int>(n * 0.04), static_cast<int>(n*0.08), static_cast<int>(n*0.12), static_cast<int>(n*0.16), static_cast<int>(n*0.2), static_cast<int>(n*0.24), static_cast<int>(n*0.28), static_cast<int>(n*0.32), static_cast<int>(n*0.36), static_cast<int>(n*0.40), n };
#pragma omp begin declare adaptation feature(n) model_name(by_grid_size) \
  variants(gpu100, gpu96, gpu92, gpu88, gpu84, gpu80, gpu76, gpu72, gpu68, gpu64, gpu60, gpu0) model(dtree)

  int gpu_end_i = n - cpu_iters_per_policy[__omp_adaptation_policy_by_grid_size];

  printf("gpu: %d - %d, cpu %d - %d\n",
      0, gpu_end_i,
      gpu_end_i, n);

#pragma omp target enter data map(to: A_diag_data[0:nonzero], \
        A_diag_i[0:grid_size+1], A_diag_j[0:nonzero], \
        f_data[0:grid_size], u_data[0:grid_size])
  {

  for (int ti=0; ti<testIter; ++ti) {

#pragma omp metadirective \
  when(user={adaptation(by_grid_size!=gpu0)} : \
    target teams distribute parallel for thread_limit(BLOCK_SIZE) nowait) 
        for (int i = 0; i < gpu_end_i; i++)
	{
          /*-----------------------------------------------------------
          * If diagonal is nonzero, relax point i; otherwise, skip it.
          *-----------------------------------------------------------*/
          
          if ( A_diag_data[A_diag_i[i]] != 0.0)
          {
            double res = f_data[i];
            for (int jj = A_diag_i[i]+1; jj < A_diag_i[i+1]; jj++)
            {
              int ii = A_diag_j[jj];
              res -= A_diag_data[jj] * u_data[ii];
            }
            u_data[i] = res / A_diag_data[A_diag_i[i]];
          }
       }

        // CPU execution
#pragma omp metadirective \
  when(user={adaptation(by_grid_size!=gpu100)} : \
      parallel for) 
        for (int i = gpu_end_i; i < n; i++)
	{
          /*-----------------------------------------------------------
          * If diagonal is nonzero, relax point i; otherwise, skip it.
          *-----------------------------------------------------------*/
          
          if ( A_diag_data[A_diag_i[i]] != 0.0)
          {
            double res = f_data[i];
            for (int jj = A_diag_i[i]+1; jj < A_diag_i[i+1]; jj++)
            {
              int ii = A_diag_j[jj];
              res -= A_diag_data[jj] * u_data[ii];
            }
            u_data[i] = res / A_diag_data[A_diag_i[i]];
          }
       }

    } 

#pragma omp taskwait
  }

if (gpu_end_i != 0){
  #pragma omp target exit data map(from: u_data[0:gpu_end_i])
}
#pragma omp end declare adaptation model_name(by_grid_size)

#ifdef _OPENMP
  t1 = omp_get_wtime();
  totalWallTime += t1 - t0;
#else
  auto t1 = std::chrono::steady_clock::now();
  std::chrono::duration<double> tdiff = t1 - t0;
  totalWallTime += tdiff.count();
#endif

  error = 0;
  for (int i=0; i < nx*ny*nz; i++)
  {
      diff = fabs(u_data[i]-1);
      if (diff > error) error = diff;
  }
     
  printf(" \n Relax: error: %e\n", error);

  hypre_TFree(values);
  hypre_CSRMatrixDestroy(A);
  hypre_SeqVectorDestroy(x);
  hypre_SeqVectorDestroy(y);
  hypre_SeqVectorDestroy(sol);

}

void test_Axpy()
{
#ifdef _OPENMP
  double t0 = 0.0,
         t1 = 0.0;
#endif


  hypre_Vector *x, *y;
  int nx, i;
  double alpha=0.5;
  double diff, error;
  double *y_data;

  nx = 125000;  /* size per proc  */

  x = hypre_SeqVectorCreate(nx);
  y = hypre_SeqVectorCreate(nx);

  hypre_SeqVectorInitialize(x);
  hypre_SeqVectorInitialize(y);

  hypre_SeqVectorSetConstantValues(x,1);
  hypre_SeqVectorSetConstantValues(y,1);

 
#ifdef _OPENMP
  t0 = omp_get_wtime();
#else
  auto t0 = std::chrono::steady_clock::now();
#endif

  for (i=0; i<testIter; ++i)
      hypre_SeqVectorAxpy(alpha,x,y);
#ifdef _OPENMP
  t1 = omp_get_wtime();
#else
  auto t1 = std::chrono::steady_clock::now();
#endif
  

  y_data = hypre_VectorData(y);
  error = 0;
  for (i=0; i < nx; i++)
  {
    diff = fabs(y_data[i]-1-0.5*(double)testIter);
      if (diff > error) error = diff;
  }
     
  if (error > 0) printf(" \n Axpy: error: %e\n", error);

#ifdef _OPENMP
  totalWallTime += t1 - t0; 
#else
  std::chrono::duration<double> tdiff = t1 - t0;
  totalWallTime += tdiff.count();
#endif

  hypre_SeqVectorDestroy(x);
  hypre_SeqVectorDestroy(y);

}

