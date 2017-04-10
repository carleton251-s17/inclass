// Java picture in C
#include <stdio.h>

struct Wrapper {
   int value;
};

int main() {
   struct Wrapper *w1 = malloc(sizeof(struct Wrapper));
   struct Wrapper *w2 = malloc(sizeof(struct Wrapper));
   (*w1).value = 42;
   w2 = w1; // need to clean up garbage
   printf("%i %i\n",(*w1).value,(*w2).value);
   (*w2).value = 50;
   printf("%i %i\n",(*w1).value,(*w2).value);
}
