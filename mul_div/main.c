#include <stdint.h>
#include <stdio.h>

typedef struct{
  int32_t q;
  int32_t r;
} result_t;


extern int32_t mul(int32_t a, int32_t b);

extern result_t div(int32_t a, int32_t b);

int main()
{
  int32_t a = 25;
  int32_t b = 4;

  int32_t c = mul(a,b);

  printf("mul %d x %d = %d \n", a, b, c);

 result_t r = div(a,b);
 printf("div quotient %d remainder %d\n", r.q, r.r);

  return 0;
}

