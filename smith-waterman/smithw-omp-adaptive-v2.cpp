/*********************************************************************************
 * Smith-Waterman algorithm
 * Purpose:     Local alignment of nucleotide or protein sequences
 * Authors:     Daniel Holanda, Hanoch Griner, Taynara Pinheiro
 *
 * Compilation: gcc omp_smithW.c -o omp_smithW -fopenmp -DDEBUG // debugging mode
 *              gcc omp_smithW.c -O3 -o omp_smithW -fopenmp // production run
 * Execution:   ./omp_smithW <number_of_col> <number_of_rows>
 *
 * Updated by C. Liao, Dec, 2021,  
 * using OpenMP directives with the following pattern to optimize data transfers
 *   enter data + target + exit data 
 *  also several functions are inlined in the OpenMP code region.
 *
 * Updated March 4th, 2022
 *   using the proposed declare adaptation+ metadirective syntax
 *   split parallel for into parallel + for , for the omp-cpu version
 *********************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <time.h>
#include <assert.h>
#include <stdbool.h> // C99 does not support the boolean data type

//#include "parameters.h"
#define FACTOR 128 
#define CUTOFF 1024

/*--------------------------------------------------------------------
 * Text Tweaks
 */
#define RESET   "\033[0m"
#define BOLDRED "\033[1m\033[31m"      /* Bold Red */
/* End of text tweaks */

/*--------------------------------------------------------------------
 * Constants
 */
#define PATH -1
#define NONE 0
#define UP 1
#define LEFT 2
#define DIAGONAL 3
/* End of constants */

/*--------------------------------------------------------------------
* Helpers
*/
#define min(x, y) (((x) < (y)) ? (x) : (y))
#define max(a,b) ((a) > (b) ? a : b)

// #define DEBUG
/* End of Helpers */

#ifndef _OPENMP

#include <sys/time.h>

double time_stamp()
{
 struct timeval t;
 double time;
 gettimeofday(&t, NULL);
 time = t.tv_sec + 1.0e-6*t.tv_usec;
 return time;
}

double omp_get_wtime()
{
  return time_stamp();
}

#endif
/*--------------------------------------------------------------------
 * Functions Prototypes
 */
//#pragma omp declare target

//Defines size of strings to be compared
long long int m = 8 ; //Columns - Size of string a
long long int n = 9;  //Lines - Size of string b
int gapScore = -2;

//Defines scores
int matchScore = 3;
int missmatchScore = -3;

//Strings over the Alphabet Sigma
char *a, *b;

//#pragma omp end declare target


void backtrack(int* P, long long int maxPos);
void printMatrix(int* matrix);
void printPredecessorMatrix(int* matrix);
void generate(void);
void calcFirstDiagElement(long long int i, long long int *si, long long int *sj);

/* End of prototypes */


/*--------------------------------------------------------------------
 * Global Variables
 */
bool useBuiltInData=true;

// the generated scoring matrix's size is m++ and n++ later to have the first row/column as 0s.

/* End of global variables */

/*--------------------------------------------------------------------
 * Function:    main
 */
int main(int argc, char* argv[]) {
  // thread_count is no longer used
  int thread_count;

  if (argc==3)
  {
    m = strtoll(argv[1], NULL, 10);
    n = strtoll(argv[2], NULL, 10);
    useBuiltInData = false;
  }

  //#ifdef DEBUG
  if (useBuiltInData)
    printf ("Using built-in data for testing ..\n");
  printf("Problem size: Matrix[%lld][%lld]\n", n, m);
  //#endif

  //Allocates a and b
  a = (char*) malloc(m * sizeof(char));
  //    printf ("debug: a's address=%p\n", a);

  b = (char*) malloc(n * sizeof(char));
  //    printf ("debug: b's address=%p\n", b);

  //Because now we have zeros
  m++;
  n++;

  //Allocates similarity matrix H
  int *H;
  H = (int *) calloc(m * n, sizeof(int));
  //    printf ("debug: H's address=%p\n", H);

  //Allocates predecessor matrix P
  int *P;
  P = (int *)calloc(m * n, sizeof(int));
  //    printf ("debug: P's address=%p\n", P);

  unsigned long long sz = (m+n +2*m*n)*sizeof(int)/1024/1024; 
  if (sz>=1024)
    printf("Total memory footprint is:%llu GB\n", sz/1024) ;
  else
    printf("Total memory footprint is:%llu MB\n", sz);

  if (useBuiltInData)
  {
    b[0] =   'G';
    b[1] =   'G';
    b[2] =   'T';
    b[3] =   'T';
    b[4] =   'G';
    b[5] =   'A';
    b[6] =   'C';
    b[7] =   'T';
    b[8] =   'A';

    a[0] =   'T';
    a[1] =   'G';
    a[2] =   'T';
    a[3] =   'T';
    a[4] =   'A';
    a[5] =   'C';
    a[6] =   'G';
    a[7] =   'G';
  }
  else
  {
    //Gen random arrays a and b
    generate();
  }

  //Start position for backtrack
  long long int maxPos = 0;
  //Calculates the similarity matrix

  // The way to generate all wavefront is to go through the top edge elements
  // starting from the left top of the matrix, go to the bottom top -> down, then left->right
  // total top edge element count =  dim1_size + dim2_size -1 
  //Because now we have zeros ((m-1) + (n-1) - 1)
  long long int nDiag = m + n - 3;

#ifdef DEBUG
  printf("nDiag=%lld\n", nDiag);
  printf("Number of wavefront lines and their first element positions:\n");
#endif

#ifdef _OPENMP
#pragma omp parallel 
  {
#pragma omp master          
    {
      thread_count = omp_get_num_threads();
      printf ("Using %d out of max %d threads...\n", thread_count, omp_get_max_threads());
    }
  }
  // detect GPU support 
  int runningOnGPU = 0;

  printf ("The number of target devices =%d\n", omp_get_num_devices());
  /* Test if GPU is available using OpenMP4.5 */
#pragma omp target map(from:runningOnGPU)
  {
    // This function returns true if currently running on the host device, false otherwise.
    if (!omp_is_initial_device())
      runningOnGPU = 1;
  }
  /* If still running on CPU, GPU must not be available */
  if (runningOnGPU == 1)
    printf("### Able to use the GPU! ### \n");
  else
  {
    printf("### Unable to use the GPU, Abort! ###\n");
    assert (false);
  }

#endif
  //Gets Initial time
  double initialTime = omp_get_wtime();

  // mistake: element count, not byte size!!
  // int asz= m*n*sizeof(int);
  int asz= m*n;

//Choice 3: map the entire region to gpu, preparing data regions  
#pragma omp begin declare adaptation feature (nDiag) model_name(mymodel) variant(serial,ompcpu,ompgpu) model (dtree)

#pragma omp metadirective \
      when (user={adaptation(mymodel==ompgpu)}: target enter data map(to:a[0:m-1], b[0:n-1]) map(to: H[0:asz], P[0:asz], maxPos)) \ 
      when (user={adaptation(mymodel==ompcpu)}: parallel default(none) shared(H, P, maxPos, nDiag, j) private(i))
  {
    for (int i = 1; i <= nDiag; ++i) // start from 1 since 0 is the boundary padding
    {
      long long int nEle, si, sj;
      //  nEle = nElement(i);
      //---------------inlined ------------
      if (i < m && i < n) { // smaller than both directions
        //Number of elements in the diagonal is increasing
        nEle = i;
      }
      else if (i < max(m, n)) { // smaller than only one direction
        //Number of elements in the diagonal is stable
        long int min = min(m, n);  // the longer direction has the edge elements, the number is the smaller direction's size
        nEle = min - 1;
      }
      else {
        //Number of elements in the diagonal is decreasing
        long int min = min(m, n);
        nEle = 2 * min - i + llabs(m - n) - 2;
      }

      //calcFirstDiagElement(i, &si, &sj);
      //------------inlined---------------------
      // Calculate the first element of diagonal
      if (i < n) { // smaller than row count
        si = i;
        sj = 1; // start from the j==1 since j==0 is the padding
      } else {  // now we sweep horizontally at the bottom of the matrix
        si = n - 1;  // i is fixed
        sj = i - n + 2; // j position is the nDiag (id -n) +1 +1 // first +1 
      }

#pragma omp metadirective \
      when (user={adaptation(mymodel==serial)}:  ) \
      when (user={adaptation(mymodel==ompcpu)}: for) \
      default(target teams distribute parallel for map(tofrom:maxPos) )
      for (int j = 0; j < nEle; ++j) 
      {  // going upwards : anti-diagnol direction
        long long int ai = si - j ; // going up vertically
        long long int aj = sj + j;  //  going right in horizontal
        ///------------inlined ------------------------------------------
        //            similarityScore(ai, aj, H, P, &maxPos); // a critical section is used inside
        int up, left, diag;

        //Stores index of element
        long long int index = m * ai + aj;

        //Get element above
        up = H[index - m] + gapScore;

        //Get element on the left
        left = H[index - 1] + gapScore;

        //Get element on the diagonal
        int t_mms;

        if (a[aj - 1] == b[ai - 1])
          t_mms = matchScore;
        else
          t_mms = missmatchScore;

        diag = H[index - m - 1] + t_mms; // matchMissmatchScore(i, j);

        // degug here
        // return;
        //Calculates the maximum
        int max = NONE;
        int pred = NONE;
        if (diag > max) { //same letter ↖
          max = diag;
          pred = DIAGONAL;
        }

        if (up > max) { //remove letter ↑
          max = up;
          pred = UP;
        }

        if (left > max) { //insert letter ←
          max = left;
          pred = LEFT;
        }
        //Inserts the value in the similarity and predecessor matrixes
        H[index] = max;
        P[index] = pred;
#if !SKIP_BACKTRACK
        //Updates maximum score to be used as seed on backtrack
#pragma omp critical
        if (max > H[maxPos]) {
          maxPos = index;
        }
#endif
        // ---------------------------------------------------------------
      }
    } // for end nDiag
  } // end omp parallel

#pragma omp metadirective \
      when (user={adaptation(mymodel==ompgpu)}: target exit data map(from: H[0:asz], P[0:asz], maxPos) ) 
 
#pragma omp end declare adaptation model_name(mymodel)

  double finalTime = omp_get_wtime();
  printf("\nElapsed time for scoring matrix computation: %f\n", finalTime - initialTime);
#if !SKIP_BACKTRACK
  initialTime = omp_get_wtime();
  backtrack(P, maxPos);
  finalTime = omp_get_wtime();

  //Gets backtrack time
  finalTime = omp_get_wtime();
  printf("Elapsed time for backtracking: %f\n", finalTime - initialTime);
#endif
  
#ifdef DEBUG
  printf("\nSimilarity Matrix:\n");
  printMatrix(H);

//  printf("\nPredecessor Matrix:\n");
//  printPredecessorMatrix(P);   // unicode not supported on lassen
#endif

  if (useBuiltInData)
  {
    printf ("Verifying results using the builtinIn data: %s\n", (H[n*m-1]==7)?"true":"false");
    assert (H[n*m-1]==7);
#if !SKIP_BACKTRACK      
    printf ("maxPos= %lld\n", maxPos);
    assert (maxPos==69);
    assert (H[maxPos]==13);
#endif      
  }
  //Frees similarity matrixes
  free(H);
  free(P);

#if 1 // TODO: causing corona clang compiler core dump
  //Frees input arrays
  free(a);
  free(b);
#endif
  printf("Finished the execution.\n");
  return 0;
}  /* End of main */


/*--------------------------------------------------------------------
 * Function:    calcElement: expect valid i value is from 1 to nDiag. since the first one is 0 padding
 * Purpose:     Calculate the position of (si, sj)-element
 * n rows, m columns: we sweep the matrix on the left edge then bottom edge to get the wavefront
 */
void calcFirstDiagElement(long long int i, long long int *si, long long int *sj) {
    // Calculate the first element of diagonal
    if (i < n) { // smaller than row count
        *si = i;
        *sj = 1; // start from the j==1 since j==0 is the padding
    } else {  // now we sweep horizontally at the bottom of the matrix
        *si = n - 1;  // i is fixed
        *sj = i - n + 2; // j position is the nDiag (id -n) +1 +1 // first +1 
    }
}

/*
 // understanding the calculation by an example
 n =6 // row
 m =2  // col
 padded scoring matrix
 n=7
 m=3
   0 1 2
 -------
 0 x x x
 1 x x x
 2 x x x
 3 x x x
 4 x x x
 5 x x x
 6 x x x
 We should peel off top row and left column since they are the padding
 the remaining 6x2 sub matrix is what is interesting for us
 Now find the number of wavefront lines and their first element's position in the scoring matrix
total diagnol frontwave = (n-1) + (m-1) -1 // submatrix row+column -1
We use the left most element in each wavefront line as its first element.
Then we have the first elements like
(1,1),
(2,1)
(3,1)
..
(6,1) (6,2)
 
 */

/*--------------------------------------------------------------------
 * Function:    backtrack
 * Purpose:     Modify matrix to print, path change from value to PATH
 */
void backtrack(int* P, long long int maxPos) {
    //hold maxPos value
    long long int predPos;

    //backtrack from maxPos to startPos = 0
    do {
        if (P[maxPos] == DIAGONAL)
            predPos = maxPos - m - 1;
        else if (P[maxPos] == UP)
            predPos = maxPos - m;
        else if (P[maxPos] == LEFT)
            predPos = maxPos - 1;
        P[maxPos] *= PATH;
        maxPos = predPos;
    } while (P[maxPos] != NONE);
}  /* End of backtrack */

/*--------------------------------------------------------------------
 * Function:    printMatrix
 * Purpose:     Print Matrix
 */
void printMatrix(int* matrix) {
    long long int i, j;
    printf("-\t-\t");
    for (j = 0; j < m-1; j++) {
        printf("%c\t", a[j]);
    }
    printf("\n-\t");
    for (i = 0; i < n; i++) { //Lines
        for (j = 0; j < m; j++) {  
                if (j==0 && i>0) printf("%c\t", b[i-1]);
            printf("%d\t", matrix[m * i + j]);
        }
        printf("\n");
    }

}  /* End of printMatrix */

/*--------------------------------------------------------------------
 * Function:    printPredecessorMatrix
 * Purpose:     Print predecessor matrix
 */
void printPredecessorMatrix(int* matrix) {
    long long int i, j, index;
    printf("    ");
    for (j = 0; j < m-1; j++) {
        printf("%c ", a[j]);
    }
    printf("\n  ");
    for (i = 0; i < n; i++) { //Lines
        for (j = 0; j < m; j++) {
                if (j==0 && i>0) printf("%c ", b[i-1]);
            index = m * i + j;
            if (matrix[index] < 0) {
                printf(BOLDRED);
                if (matrix[index] == -UP)
                    printf("↑ ");
                else if (matrix[index] == -LEFT)
                    printf("← ");
                else if (matrix[index] == -DIAGONAL)
                    printf("↖ ");
                else
                    printf("- ");
                printf(RESET);
            } else {
                if (matrix[index] == UP)
                    printf("↑ ");
                else if (matrix[index] == LEFT)
                    printf("← ");
                else if (matrix[index] == DIAGONAL)
                    printf("↖ ");
                else
                    printf("- ");
            }
        }
        printf("\n");
    }

}  /* End of printPredecessorMatrix */

/*--------------------------------------------------------------------
 * Function:    generate
 * Purpose:     Generate arrays a and b
 */
void generate() {
    //Random seed
    srand(time(NULL));

    //Generates the values of a
    long long int i;
    for (i = 0; i < m; i++) {
        int aux = rand() % 4;
        if (aux == 0)
            a[i] = 'A';
        else if (aux == 2)
            a[i] = 'C';
        else if (aux == 3)
            a[i] = 'G';
        else
            a[i] = 'T';
    }

    //Generates the values of b
    for (i = 0; i < n; i++) {
        int aux = rand() % 4;
        if (aux == 0)
            b[i] = 'A';
        else if (aux == 2)
            b[i] = 'C';
        else if (aux == 3)
            b[i] = 'G';
        else
            b[i] = 'T';
    }
} /* End of generate */


/*--------------------------------------------------------------------
 * External References:
 * http://vlab.amrita.edu/?sub=3&brch=274&sim=1433&cnt=1
 * http://pt.slideshare.net/avrilcoghlan/the-smith-waterman-algorithm
 * http://baba.sourceforge.net/
 */
