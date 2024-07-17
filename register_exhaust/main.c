#include <stdint.h>
#include <stdio.h>

extern uint32_t sum(uint32_t m0,uint32_t m1,uint32_t m2,uint32_t m3,uint32_t m4,uint32_t m5,uint32_t m6,uint32_t m7);

int main()
{
  uint32_t m0 = 0;
  uint32_t m1 = 1;
  uint32_t m2 = 2;
  uint32_t m3 = 3;
  uint32_t m4 = 4;
  uint32_t m5 = 5;
  uint32_t m6 = 6;
  uint32_t m7 = 7;

  uint32_t res = sum(m0,m1,m2,m3,m4,m5,m6,m7);

  printf("Total sum %u \n", res);

  return 0;
}

