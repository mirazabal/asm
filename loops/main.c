#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

extern int64_t sum(int64_t* val, size_t sz);

int main()
{
  int64_t arr[10] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
  int64_t r = sum(arr, 10);

  printf("result %ld \n", r);

  return 0;
}

