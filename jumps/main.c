#include <stdint.h>
#include <stdio.h>

extern int32_t min_3(int32_t a, int32_t b, int32_t c);

extern int32_t min_3_cmov(int32_t a, int32_t b, int32_t c);

int main()
{
  int32_t a = 1;
  int32_t b = 3;
  int32_t c = -5;

  int32_t r = min_3(a, b, c); 
  printf("Min %d \n", r);


  int32_t r2 = min_3_cmov(a, b, c);
  printf("Min2 %d \n", r2);

  return 0;
}
