#include <stdio.h>

int main(void) {
  int sum = 0;
  int i;
  for (i = 1; i <= 100; i++){
    sum = sum + i;
  }
  printf("%d\n", sum);
  return sum;
}