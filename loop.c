#include <stdio.h>
int main(void) {
 //Tests simple looping behavior
  int t0 = 60;
  int t1 = 0;
  while(t1 != t0){
    t1 = t1 + 5;
    t0 = t0 - 1;
  }
  if(t1 == 0){
    int a0 = 0;
    return 0;
  }
  else{
    int a0 = 42;
    return 0;
  }
}
