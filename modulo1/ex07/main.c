#include <stdio.h>
#include "array_sort1.h"

int main(){

	int array[6] = {9,4,2,-2,1,5};
	int *ptr = array;

	
	array_sort1(ptr,6);
	
	for(int i = 0; i < 6; i++){
	
		printf("%d", array[i]);
		printf(" ");
	
	}
	printf("\n");


	return 0;
}
