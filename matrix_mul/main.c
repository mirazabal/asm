#include <stdlib.h>
#include <stdio.h>

// a colums needs to be equal to b rows
extern void mat_mul(int64_t const* a, size_t ra, size_t ca, int64_t const* b, size_t cb, int64_t*c);

#define n 3
#define m 2

int main()
{
  int64_t a[n][m] = {{0, 1}, {2, 3}, {4, 5}};
  int64_t b[m][n] = {{6, 7, 8}, {9, 10, 11}};

  int64_t c[n][n] = {0};

  mat_mul(&a[0][0], n, m, &b[0][0], n, &c[0][0]);

  for(size_t i = 0; i < n; ++i){
    for(size_t j = 0; j < n; ++j){
      printf(" %ld, ", c[i][j] );
    }
    printf("\n");
  }

  return 0;
}
