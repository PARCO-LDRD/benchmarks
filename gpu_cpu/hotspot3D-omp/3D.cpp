#include <sys/types.h>
#include <omp.h>
#include "3D_helper.h"

#define TOL      (0.001)
#define STR_SIZE (256)
#define MAX_PD   (3.0e6)

/* required precision in degrees  */
#define PRECISION    0.001
#define SPEC_HEAT_SI 1.75e6
#define K_SI         100

/* capacitance fitting factor  */
#define FACTOR_CHIP  0.5

float t_chip      = 0.0005;
float chip_height = 0.016;
float chip_width  = 0.016;
float amb_temp    = 80.0;

double get_time(void)
{
	struct timeval tv;

	gettimeofday(&tv, NULL);
  return tv.tv_sec*(uint64_t)1000000+tv.tv_usec; 
}


void usage(int argc, char **argv)
{
  fprintf(stderr, "Usage: %s <rows/cols> <layers> <iterations> <powerFile> <tempFile> <outputFile>\n", argv[0]);
  fprintf(stderr, "\t<rows/cols>  - number of rows/cols in the grid (positive integer)\n");
  fprintf(stderr, "\t<layers>  - number of layers in the grid (positive integer)\n");

  fprintf(stderr, "\t<iteration> - number of iterations\n");
  fprintf(stderr, "\t<powerFile>  - name of the file containing the initial power values of each cell\n");
  fprintf(stderr, "\t<tempFile>  - name of the file containing the initial temperature values of each cell\n");
  fprintf(stderr, "\t<outputFile - output file\n");
  exit(1);
}



int main(int argc, char** argv)
{
  if (argc != 6)
  {
    usage(argc,argv);
  }

  char *pfile, *tfile;// *ofile;
  int iterations = atoi(argv[3]);

  pfile            = argv[4];
  tfile            = argv[5];
  //ofile            = argv[6];
  int numCols      = atoi(argv[1]);
  int numRows      = atoi(argv[1]);
  int layers       = atoi(argv[2]);

  /* calculating parameters*/

  float dx         = chip_height/numRows;
  float dy         = chip_width/numCols;
  float dz         = t_chip/layers;

  float Cap        = FACTOR_CHIP * SPEC_HEAT_SI * t_chip * dx * dy;
  float Rx         = dy / (2.0 * K_SI * t_chip * dx);
  float Ry         = dx / (2.0 * K_SI * t_chip * dy);
  float Rz         = dz / (K_SI * dx * dy);

  float max_slope  = MAX_PD / (FACTOR_CHIP * t_chip * SPEC_HEAT_SI);
  float dt         = PRECISION / max_slope;

  float ce, cw, cn, cs, ct, cb, cc;
  float stepDivCap = dt / Cap;
  ce               = cw                                              = stepDivCap/ Rx;
  cn               = cs                                              = stepDivCap/ Ry;
  ct               = cb                                              = stepDivCap/ Rz;
  cc               = 1.0 - (2.0*ce + 2.0*cn + 3.0*ct);


  int size = numCols * numRows * layers;
  float* tIn      = (float*) calloc(size,sizeof(float));
  float* pIn      = (float*) calloc(size,sizeof(float));
  float* tCopy = (float*)malloc(size * sizeof(float));
  float* tOut  = (float*) calloc(size,sizeof(float));
//  float* sel; // select tIn or tOut as the output of the computation

  readinput(tIn,numRows, numCols, layers, tfile);
  readinput(pIn,numRows, numCols, layers, pfile);

  memcpy(tCopy,tIn, size * sizeof(float));

  double start = get_time();
#pragma omp begin declare adaptation feature(iterations, numRows, numCols) model_name(hotspot) variants(cpu, gpu) model(dtree)

#pragma omp metadirective when(user={adaptation(hotspot==gpu)} : target enter data map(to: tIn[0:size], pIn[0:size]) map(alloc: tOut[0:size])) 

    for(int j = 0; j < iterations; j++)
    {
#pragma omp metadirective when(user={adaptation(hotspot==gpu)} : target teams distribute parallel for collapse(2)) \
                          when(user={adaptation(hotspot==cpu)} : parallel for collapse(2) firstprivate(numRows, numCols)) 
    for (int j = 0; j < numRows; j++)  
      {
        for (int i = 0; i < numCols; i++)  
        {
          float amb_temp = 80.0;

          int c = i + j * numCols;
          int xy = numCols * numRows;

          int W = (i == 0)        ? c : c - 1;
          int E = (i == numCols-1)     ? c : c + 1;
          int N = (j == 0)        ? c : c - numCols;
          int S = (j == numRows-1)     ? c : c + numCols;

          float temp1, temp2, temp3;
          temp1 = temp2 = tIn[c];
          temp3 = tIn[c+xy];
          tOut[c] = cc * temp2 + cw * tIn[W] + ce * tIn[E] + cs * tIn[S]
            + cn * tIn[N] + cb * temp1 + ct * temp3 + stepDivCap * pIn[c] + ct * amb_temp;
          c += xy;
          W += xy;
          E += xy;
          N += xy;
          S += xy;

          for (int k = 1; k < layers-1; ++k) {
            temp1 = temp2;
            temp2 = temp3;
            temp3 = tIn[c+xy];
            tOut[c] = cc * temp2 + cw * tIn[W] + ce * tIn[E] + cs * tIn[S]
              + cn * tIn[N] + cb * temp1 + ct * temp3 + stepDivCap * pIn[c] + ct * amb_temp;
            c += xy;
            W += xy;
            E += xy;
            N += xy;
            S += xy;
          }
          temp1 = temp2;
          temp2 = temp3;
          tOut[c] = cc * temp2 + cw * tIn[W] + ce * tIn[E] + cs * tIn[S]
            + cn * tIn[N] + cb * temp1 + ct * temp3 + stepDivCap * pIn[c] + ct * amb_temp;
        }
      }
      auto temp = tIn;
      tIn = tOut;
      tOut = temp;
    }
    if (iterations & 01) {
#pragma omp metadirective when(user={adaptation(hotspot==gpu)} : target update from (tIn[0:size]))
//     sel = tIn;
    }
    else {
#pragma omp metadirective when(user={adaptation(hotspot==gpu)} : target update from (tOut[0:size]))
//     sel = tOut;
    }


#pragma omp metadirective when(user={adaptation(hotspot==gpu)} : target exit data map(delete: tIn[0:size], pIn[0:size]) map(delete: tOut[0:size])) 

#pragma omp end declare adaptation model_name(hotspot)

  double stop = get_time();
  printf("__ExecutionTime__:%g\n" , (stop - start));


//  float* answer = (float*)calloc(size, sizeof(float));
//  computeTempCPU(pIn, tCopy, answer, numCols, numRows, layers, Cap, Rx, Ry, Rz, dt, amb_temp, iterations);
//
//  float acc = accuracy(sel,answer,numRows*numCols*layers);
//  float time = (float)((stop - start)/(1000.0 * 1000.0));
//  printf("Device offloading time: %.3f (s)\n",time);
//  printf("Root-mean-square error: %e\n",acc);

  //writeoutput(tOut,numRows,numCols,layers,ofile);
  free(tIn);
  free(pIn);
  free(tCopy);
  free(tOut);
  return 0;
}

