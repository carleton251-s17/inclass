#include <stdio.h>
// Exercise pointers and cool fun
int main () {
   int a = 12;
   printf("a = %i %i %i\n", a, a+1, a-1);
   
   int *x;
   x = &a; // address-of
   printf("address of that 12 is %p\n",x);
}
