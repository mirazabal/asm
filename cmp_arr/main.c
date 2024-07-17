#include <stdio.h>
#include <stdint.h>

extern int32_t cmp_arr(int32_t *a, int32_t *b, size_t n);

int main()
{
  int32_t a[8] = {0, 1, 2, 3, 4, 5, 6, 7};
  int32_t b[8] = {0, 1, 2, 3, 4, 5, 6, 7};

  int32_t r = cmp_arr(a, b, 8);

  printf("Equal elements %d \n", r);

  return 0;
}

