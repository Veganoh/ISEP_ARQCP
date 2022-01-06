#include <stdio.h>
#include "add_byte.h"


int main(){

	
	int vec1[] = {6,0xffffffff,0xff,0xfffff0ff,0xfffff8ff,0,4};

    int size = sizeof(vec1)/sizeof(int);
    int vec2[size];

    int *ptr1 = vec1;
    int *ptr2 = vec2;

    add_byte(5,ptr1,ptr2);

    int j = 0;

	printf("Vector 1: ");
    for(j = 0;j < size; j++){
        printf("%x ",vec1[j]);
    }
    printf("\nVector 2: ");

    for(j = 0;j < size; j++){
        printf("%x ",vec2[j]);
    }
    printf("\n");

    return 0;
}
