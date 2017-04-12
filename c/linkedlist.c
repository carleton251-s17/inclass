#include <stdlib.h>

struct LinkedList {
   int value;
   struct LinkedList *next;
};

typedef   struct LinkedList   LinkedList;

LinkedList *insertFrontLL(LinkedList *list, int item) {
   LinkedList *cell = malloc(sizeof(LinkedList));
   (*cell).value = item;
   (*cell).next = list;
   return cell;
}


int main() {
   LinkedList *list = NULL;
   list = insertFrontLL(list, 3);
}
