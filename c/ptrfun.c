#include <stdio.h>
// Exercise pointers and cool fun
int main () {
   int a = 12;
   printf("a = %i %i %i\n", a, a+1, a-1);
   
   int *x;
   x = &a; // address-of
   printf("address of that 12 is %p\n",x);
   printf("value of a = %i\n",a);
   printf("and again %i\n", *x);

   // make an alias
   int *y;
   y = x;
   printf("here is y ptr now %p\n",y);
   printf("here is y now %i\n",*y);
}
