#include <cstdlib>
#include <stdio.h>
#include <cstring>
#include <vector>
#include <omp.h>
#include "reference.h"

void ga(const char *__restrict target,
        const char *__restrict query,
              char *__restrict batch_result,
              uint32_t length,
              int query_sequence_length,
              int coarse_match_length,
              int coarse_match_threshold,
              int current_position,
              int gpu_end_tid)
{

#pragma omp metadirective \
  when(user={adaptation(by_grid_size!=cpu100)} : \
      target teams distribute parallel for thread_limit(256) nowait) 
  for (uint tid = 0; tid < gpu_end_tid; tid++) { 
    bool match = false;
    int max_length = query_sequence_length - coarse_match_length;

    for (int i = 0; i <= max_length; i++) {
      int distance = 0;
      for (int j = 0; j < coarse_match_length; j++) {
        if (target[current_position + tid + j] != query[i + j]) {
          distance++;
        }
      }

      if (distance < coarse_match_threshold) {
        match = true;
        break;
      }
    }
    if (match) {
      batch_result[tid] = 1;
    }
  }

#pragma omp metadirective \
  when(user={adaptation(by_grid_size!=cpu0)} : \
      parallel for) 
  for (uint tid = gpu_end_tid; tid < length; tid++) { 
    bool match = false;
    int max_length = query_sequence_length - coarse_match_length;

    for (int i = 0; i <= max_length; i++) {
      int distance = 0;
      for (int j = 0; j < coarse_match_length; j++) {
        if (target[current_position + tid + j] != query[i + j]) {
          distance++;
        }
      }

      if (distance < coarse_match_threshold) {
        match = true;
        break;
      }
    }
    if (match) {
      batch_result[tid] = 1;
    }
  }

#pragma omp taskwait

}

int main(int argc, char* argv[]) 
{
  if (argc != 5) {
    printf("Usage: %s <target sequence length> <query sequence length> "
           "<coarse match length> <coarse match threshold>\n", argv[0]);
    return 1;
  }

  char seq[] = {'A', 'C', 'T', 'G'};
  const int tseq_size = atoi(argv[1]);
  const int qseq_size = atoi(argv[2]);
  const int coarse_match_length = atoi(argv[3]);
  const int coarse_match_threshold = atoi(argv[4]);
  int kBatchSize = 1024;
  
  std::vector<char> target_sequence(tseq_size);
  std::vector<char> query_sequence(qseq_size);

  srand(123);
  for (int i = 0; i < tseq_size; i++) target_sequence[i] = seq[rand()%4];
  for (int i = 0; i < qseq_size; i++) query_sequence[i] = seq[rand()%4];

  char *d_target = target_sequence.data(); 
  char *d_query = query_sequence.data();

  uint32_t max_searchable_length = tseq_size - coarse_match_length;
  uint32_t current_position = 0;

  // host and device results
  char d_batch_result[kBatchSize];
  char batch_result_ref[kBatchSize];

#ifdef VERIFY
  bool ok = true;
#endif

  double start = omp_get_wtime();

#pragma omp begin declare adaptation feature(tseq_size, qseq_size, kBatchSize) model_name(by_grid_size) \
  variants(cpu100, cpu96, cpu92, cpu88, cpu84, cpu80, cpu76, cpu72, cpu68, cpu64, cpu60, cpu0) model(dtree)


  const float cpu_iters_per_policy[] = { 
    0, 
    0.04, 
    0.08, 
    0.12, 
    0.16, 
    0.2, 
    0.24, 
    0.28, 
    0.32, 
    0.36, 
    0.40, 
    1.0
  };

  int gpu_end_i = static_cast<int>(cpu_iters_per_policy[__omp_adaptation_policy_by_grid_size]*kBatchSize);

  printf("(batch) gpu %d - %d, cpu %d - %d\n", 0, gpu_end_i, gpu_end_i,
      kBatchSize);
  printf("I am going to execute %ld\n", max_searchable_length);
  int counter = 0;
  double tmp_start = omp_get_wtime();
#pragma omp target enter data map (to: d_target[0:tseq_size], \
    d_query[0:qseq_size]) \
  map (alloc: d_batch_result[0:gpu_end_i])
  double tmp_end = omp_get_wtime();
  printf("Alloca time is %f\n", tmp_end - tmp_start);
  {
    while (current_position < max_searchable_length) {
      counter++;
#pragma omp metadirective \
      when(user={adaptation(by_grid_size!=cpu100)} : \
          target teams distribute parallel for thread_limit(256) nowait) 
      for (int i = 0; i < gpu_end_i; i++)
        d_batch_result[i] = 0;
#pragma omp metadirective \
      when(user={adaptation(by_grid_size!=cpu0)} : \
          parallel for)
      for (int i = gpu_end_i; i < kBatchSize; i++)
        d_batch_result[i] = 0;

#pragma omp taskwait

#ifdef VERIFY
      memset(batch_result_ref, 0, kBatchSize);
#endif

      uint32_t end_position = current_position + kBatchSize;
      if (end_position >= max_searchable_length) {
        end_position = max_searchable_length;
      }
      uint32_t length = end_position - current_position;

      ga( d_target, d_query, d_batch_result, 
          length, qseq_size,
          coarse_match_length, 
          coarse_match_threshold, 
          current_position,
          static_cast<int>(length*cpu_iters_per_policy[__omp_adaptation_policy_by_grid_size]));

#pragma omp metadirective \
      when(user={adaptation(by_grid_size!=cpu100)} : \
          target update from (d_batch_result[0:gpu_end_i]))

#ifdef VERIFY
      reference(target_sequence.data(), query_sequence.data(), batch_result_ref, length, qseq_size,
                coarse_match_length, coarse_match_threshold, current_position);

      int error = memcmp(batch_result_ref, d_batch_result, kBatchSize * sizeof(char));
      if (error) {
        ok = false;
        break;
      }
#endif
      current_position = end_position;
    }
  }

  printf("I executed %ld iterations\n", counter);


#pragma omp end declare adaptation model_name(by_grid_size)

  printf("Execution time %.3lf\n", omp_get_wtime() - start);
#ifdef VERIFY
  printf("%s\n", ok ? "PASS" : "FAIL");  
#endif
  return 0;
}
