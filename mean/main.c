#include <stdlib.h>
#include <stdio.h>

extern float calc_mean(float const* src, size_t n);

int main()
{

  float arr[8] = {0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7 };

  float mean = calc_mean(arr, 8);

  printf("Mean value %lf \n", mean);

  return 0;
}
