#include <stdio.h>

#include <stdint.h>

extern int32_t sum(int32_t a, int32_t b);

int main()
{
  int a = 1;
  int b = 2;
  int32_t c = sum(a,b);

  printf("sum of a %d and b %d equal %d\n",a, b, c );
  return 0;
}
