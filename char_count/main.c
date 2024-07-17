
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

extern int32_t count_chars(char const * str, char n);

int main()
{
  char str[] = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

  int32_t c = count_chars(str, 'a');

  printf("Number of occurrences %d \n", c);

  return 0;
}
