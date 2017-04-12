#include <stdlib.h>

struct LinkedList {
   int value;
   struct LinkedList *next;
};

LinkedList *insertFrontLL(LinkedList *list, int item) {
   LinkedList *cell = malloc(sizeof(LinkedList));
   (*cell).value = item;
   (*cell).next = list;
   return cell;
}


typedef   struct LinkedList   LinkedList;

int main() {
   LinkedList *list = NULL;
   list = insertFrontLL(list, 3);
}
