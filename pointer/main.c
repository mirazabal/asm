#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>

extern void pointer(int32_t* a, int32_t val);

int main()
{
  int32_t a = 0;
  int32_t val = 2;
 
  pointer(&a, val);

  printf("New a value = %d \n", a);

  return 0;
}
