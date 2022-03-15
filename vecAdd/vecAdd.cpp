#include <iostream>
#include <cstdlib>
#include <cmath>
#include <omp.h>
#include <unistd.h>
#include <chrono>
#include <cstring>
#include <limits.h>

using namespace std::chrono;
using namespace std;
#define STARTING_SEED 1070

#define fptype double

extern int sched_getcpu(void);

#define MAX_SIZE 1024
int map_array[MAX_SIZE+10];

int print_openmp_mapping (int rank)
{
  char map_buf[10000];
  char host[1024]="unknown";
  char tag[1024]="";
  char env_str[50000]="";
  char *omp_proc_bind_str=NULL, *omp_places_str=NULL, *omp_num_threads_str=NULL;
  int num_threads=-1;
  int i;

  /* Get OMP env variables that could affect binding */
  omp_proc_bind_str = getenv("OMP_PROC_BIND");
  omp_places_str = getenv("OMP_PLACES");
  omp_num_threads_str = getenv("OMP_NUM_THREADS");

  /* Add environment variables to env_str if set */
  if (omp_num_threads_str != NULL)
    sprintf (env_str+strlen(env_str), " OMP_NUM_THREADS=%s",  omp_num_threads_str);

  if (omp_proc_bind_str != NULL)
    sprintf (env_str+strlen(env_str), " OMP_PROC_BIND=%s",  omp_proc_bind_str);

  if (omp_places_str != NULL)
    sprintf (env_str+strlen(env_str), " OMP_PLACES=%s",  omp_places_str);

  gethostname(host, sizeof(host));
  /* Detect MPI rank on CORAL without calling MPI_Init */
  if (rank >= 0)
  {
    sprintf (tag, "Rank %4i  %-12s", rank, host);
  }
  else
  {
    sprintf (tag, "%-12s", host);
  }

  /* Initialize cpu_id array to -1 */
  for (i=0; i < MAX_SIZE; i++)
    map_array[i] = -1;
  /* Mark 1 past array as endpoint to simplify logic */
  map_array[MAX_SIZE] = -1;

  /* Put enough work that should hit all cpu ids available to OpenMP */
#pragma omp parallel for 
  for (i=0; i < 1000000; i++)
  {
    /* Mark what cpu_id used by iteration i */
    int tid = omp_get_thread_num();
    int cpu = sched_getcpu();

    if ((cpu >= 0) && (cpu < MAX_SIZE))
    {
      /* Racy update but ok, just need it not to be -1 */
      if (map_array[cpu] < i)
        map_array[cpu] = i;
    }
    else
    {
      printf ("Unexpected tid %i cpu %i\n", tid, cpu);
    }
  }

  /* Create string with concise listing of cpus used */
  num_threads=0;
  sprintf (map_buf, "Map "); 
  for (i=0; i < MAX_SIZE; i++)
  {
    int start=-1, end=-1;
    /* Create string of cpu ids used by OpenMP threads */
    if (map_array[i] != -1)
    {
      /* Add comma if not first entry */
      if (num_threads > 0)
        sprintf (map_buf+strlen(map_buf), ",");

      start=i;
      num_threads++;
      if (map_array[i+1] != -1)
      {
        /* Count continuous thread numbers */
        while (map_array[i+1] != -1)
        {
          num_threads++;
          i++;
        }
        end=i;
        sprintf (map_buf+strlen(map_buf), "%i-%i",  start, end);
      }
      else
      {
        sprintf (map_buf+strlen(map_buf), "%i",  i);
      }
    }
  }

  /* print out one line per process */
  printf ("%s Threads %i %s%s\n", tag, num_threads, map_buf, env_str);

  return (0);
}

void vecAdd(fptype* X, fptype* Y, size_t numElements){
#pragma omp begin declare adaptation feature(numElements) model_name(vecAdd) \
  variants( cpu, gpu) model(dtree)


#pragma omp metadirective \
    when(user={adaptation(vecAdd==cpu)} : parallel for shared(X,Y) firstprivate(numElements))\
    when(user={adaptation(vecAdd==gpu)} : target teams distribute parallel for \
        map(from:Y[0:numElements]) map(to:X[0:numElements]))
  for (size_t i = 0; i < numElements; i++){
    Y[i] += X[i];
  }

#pragma omp end declare adaptation model_name(vecAdd)
}

void verify(fptype* X, fptype* Y, size_t numElements){
  int numErrors = 0;
#pragma omp parallel shared(X,Y) firstprivate(numElements)
#pragma omp parallel for
    for (size_t i = 0; i < numElements; i++){
      if ( *reinterpret_cast<long *>(&X[i]) != *reinterpret_cast<long *>(&Y[i]))
        cout << "Error : " << i << " " << X[i] << " " << Y[i] << "\n"; 
    }
  cout << "Total errors are " << numErrors << "\n";
}

int main(int argc, char *argv[]){
  print_openmp_mapping(-1);
  srand((unsigned) time(0));
  size_t numElements = (atol(argv[1])*1024*1024)/sizeof(fptype); 
  std::cout << "Num Elements:" << numElements << "\n";
  std::cout << "Total Memory:" << numElements << "\n";
  std::cout << "Number of threads are : " << omp_get_max_threads() << "\n";
  char hostname[HOST_NAME_MAX + 1];
  gethostname(hostname, HOST_NAME_MAX + 1);

  printf("hostname: %s\n", hostname);

  fptype *X = new fptype[numElements];
  fptype *Y = new fptype[numElements];
  auto start = high_resolution_clock::now();
  memset((void*)X,1, sizeof(fptype)*numElements); 
  auto stop = high_resolution_clock::now();
  auto duration = duration_cast<microseconds>(stop - start);
  std::cout<< "Init: Runtime is micro seconds:" << duration.count() << "\n";


  start = high_resolution_clock::now();
  vecAdd(X, Y, numElements);
  stop = high_resolution_clock::now();
  duration = duration_cast<microseconds>(stop - start);
  std::cout<< "__ExecutionTime__:" << duration.count() << "\n";


#ifdef __VERIFY__
  start = high_resolution_clock::now();
  verify(X,Y, numElements);
  stop = high_resolution_clock::now();
  duration = duration_cast<microseconds>(stop - start);
  std::cout<< "Verify:Runtime is micro seconds:" << duration.count() << "\n";

#endif
  delete [] X;
  delete [] Y;
}
