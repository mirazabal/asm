#include <assert.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

extern void cp_arr(int32_t const* src, int32_t* dst, size_t n);

int main()
{
  int32_t const n = 32;
  int32_t src[n];
  
  for(size_t i = 0; i < n; ++i){
    src[i] = rand();
  }

  int32_t dst[n];
  cp_arr(src, dst, n);

  for(size_t i = 0; i < n; ++i){
    assert(src[i] == dst[i]);
  }

  printf("Successfully copied!\n");

  return 0;
}
