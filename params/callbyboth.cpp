#include <stdio.h>

void foo(int x, int &y) {
   x = 6;
   y = 7;
}

int main() {
   int a = 5;
   int b = 4;
   foo(a,b);
   printf("%i %i\n",a,b);
}
