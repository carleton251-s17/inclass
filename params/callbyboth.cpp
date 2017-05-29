#include <stdio.h>

void foo(int x, int call-by-ref y) {
   x = 6;
   y = 7;
}

int main() {
   int a = 5;
   int b = 4;
   foo(a);
   printf("%i %i\n",a,b);
}
