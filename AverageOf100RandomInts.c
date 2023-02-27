#include <stdio.h>
#include <stdlib.h>

int main(void) {
  int array [100];
  int i, j;
  int sum = 0;

  for (i = 0; i < 100; i++){
    int rdm =rand() % 20;
    array[i] = rdm;
  }

  for(j = 0; j < 100; j++){
    sum += array[j];
  }
  int average = sum/100;
  printf("%d\n", average);
  return average;
}