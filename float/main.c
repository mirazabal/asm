#include <stdio.h>

extern float celsius_fahr(float temp);

int main()
{
  float c = 25.2;
  float f = celsius_fahr(c);
  printf("%lf celsius are %lf fahrenheit \n",c, f);

  return 0;
}
