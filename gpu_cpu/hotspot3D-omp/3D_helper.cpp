#include "3D_helper.h"

#define STR_SIZE 256

void fatal(const char *s)
{
  fprintf(stderr, "Error: %s\n", s);
}

void readinput(float *vect, long grid_rows, long grid_cols, int layers, char *file) {

  long i,j,k;
  FILE *fp;
  char str[STR_SIZE];
  float val;
  
  int GRID_COLS, GRID_ROWS;
  GRID_COLS = GRID_ROWS = 512;

  if( (fp  = fopen(file, "r" )) ==0 )
    fatal( "The file was not opened" );

  for (i=0; i <= GRID_ROWS-1; i++) 
    for (j=0; j <= GRID_COLS-1; j++)
      for (k=0; k <= layers-1; k++)
      {
        if (fgets(str, STR_SIZE, fp) == NULL) fatal("Error reading file\n");
        if (feof(fp))
          fatal("not enough lines in file");
        if ((sscanf(str, "%f", &val) != 1))
          fatal("invalid file format");
        vect[i*grid_cols+j+k*grid_rows*grid_cols] = val;
        for ( int p = i+GRID_ROWS ; p < grid_rows; p+=GRID_ROWS)
          for ( int o = j+GRID_COLS; o < grid_cols; o+=GRID_COLS)
            vect[p*grid_cols+o+k*grid_rows*grid_cols] = val;
      }

  fclose(fp);	

}


void writeoutput(float *vect, int grid_rows, int grid_cols, int layers, char *file) {

  int i,j,k, index=0;
  FILE *fp;
  char str[STR_SIZE];

  if( (fp = fopen(file, "w" )) == 0 )
    printf( "The file was not opened\n" );


  for (i=0; i < grid_rows; i++) 
    for (j=0; j < grid_cols; j++)
      for (k=0; k < layers; k++)

      {
        sprintf(str, "%d\t%g\n", index, vect[i*grid_cols+j+k*grid_rows*grid_cols]);
        fputs(str,fp);
        index++;
      }

  fclose(fp);	
}

void computeTempCPU(float *pIn, float* tIn, float *tOut, 
    int nx, int ny, int nz, float Cap, 
    float Rx, float Ry, float Rz, 
    float dt, float amb_temp, int numiter) 
{   float ce, cw, cn, cs, ct, cb, cc;
  float stepDivCap = dt / Cap;
  ce = cw =stepDivCap/ Rx;
  cn = cs =stepDivCap/ Ry;
  ct = cb =stepDivCap/ Rz;

  cc = 1.0 - (2.0*ce + 2.0*cn + 3.0*ct);

  int c,w,e,n,s,b,t;
  int x,y,z;
  int i = 0;
  do{
    double diff = 0;
    for(z = 0; z < nz; z++)
      for(y = 0; y < ny; y++)
        for(x = 0; x < nx; x++)
        {
          c = x + y * nx + z * nx * ny;

          w = (x == 0) ? c : c - 1;
          e = (x == nx - 1) ? c : c + 1;
          n = (y == 0) ? c : c - nx;
          s = (y == ny - 1) ? c : c + nx;
          b = (z == 0) ? c : c - nx * ny;
          t = (z == nz - 1) ? c : c + nx * ny;
          tOut[c] = tIn[c]*cc + tIn[n]*cn + tIn[s]*cs + tIn[e]*ce + tIn[w]*cw + tIn[t]*ct + tIn[b]*cb + (dt/Cap) * pIn[c] + ct*amb_temp;
          diff += fabs(tOut[c] - tIn[c]);
        }
    float *temp = tIn;
    tIn = tOut;
    tOut = temp; 
    i++;
    printf("Diff %g\n", diff/(double)(nz*ny*nx));
  }
  while(i < numiter);

}

float accuracy(float *arr1, float *arr2, int len)
{
  float err = 0.0; 
  int i;
  for(i = 0; i < len; i++)
  {
    err += (arr1[i]-arr2[i]) * (arr1[i]-arr2[i]);
  }

  return (float)sqrt(err/len);
}



