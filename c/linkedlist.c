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

void cleanupLL(LinkedList *list) {
   LinkedList *cur = list;
   while (cur != NULL) {
      LinkedList *follow = (*cur).next;
      free(cur);
      cur = follow;
   }
}

int main() {
   LinkedList *list = NULL;
   list = insertFrontLL(list, 3);
   cleanupLL(list);
}
