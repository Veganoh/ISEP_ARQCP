#include <stdio.h>
#include "sort_without_reps.h"

int main(){
	int array[9] = {2,1,1,1,1,1,1,1,1};
	int *ptr1 = array;
	
	int destination[2];
	int *ptr2 = destination;
	
	int size = sort_without_reps(ptr1,9,ptr2);
	
	for(int i = 0; i < size; i++){
	
		printf("%d", destination[i]);
		printf(" ");
	
	}
	printf("\n%d \n",size);

	
	
}
