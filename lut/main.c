#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>


// First 24 prime numbers
extern uint32_t prime(size_t idx);

int main()
{
  for(size_t i = 0; i < 100; ++i){
    printf("%u, ", prime(i));
  }
  printf("\n");

  return 0;
}

