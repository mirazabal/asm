#include <stdint.h>
#include <stdio.h>

extern void sum(int8_t a,int16_t b, int32_t c, int64_t d, int8_t e, int16_t f, int32_t g, int32_t h, int64_t* i); 

int main()
{
  int64_t out = 0;
  sum(1,2,3,4,5,6,7,8,&out);

  printf("out %ld \n",out);

  return 0;
}

