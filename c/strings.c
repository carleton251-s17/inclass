#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    char word1[6] = "hello";
    //word1[5] = 'q';
    printf("%s\n", word1);

    //char *word3 = malloc(6*sizeof(char));
    char *word3 = calloc(6,sizeof(char));
    strcpy(word3,"weitz");
    word3[0] = 'b';
    printf("%s\n", word3);

    char *word2 = "world";
    //word2[0] = 'b';  SEGFAULT!
    printf("%s\n", word2);

    char *together =
       strcat("hello","world");
    printf("%s\n",together);

}
