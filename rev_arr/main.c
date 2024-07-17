#include <assert.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

extern void rev_arr(int64_t const* src, int64_t* dst, size_t n);

int main()
{
  int32_t const n = 32;
  int64_t src[n];
  
  for(size_t i = 0; i < n; ++i){
    src[i] = rand();
  }

  int64_t dst[n];
  memset(dst, 0, n*sizeof(int64_t));
  rev_arr(src, dst, n);

  for(size_t i = 0; i < n; ++i){
    assert(src[i] == dst[n-1-i]);
  }

  printf("Successfully reversed!\n");

  return 0;
}
