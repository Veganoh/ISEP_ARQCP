#include <stdio.h>
#include "swap.h"

int main(){
	
	int size = 5;
	
	int vec1[] = {1,2,3,4,5};
	int vec2[] = {5,4,3,2,1};
	
	swap(vec1,vec2,size);
	
	printf("\nVector 1:\n");
	for( int i = 0; i < size; i++){
		
		printf("%d ",vec1[i]);
	}
	
	printf("\nVector 2:\n");
	
	for( int i = 0; i < size; i++){
		
		printf("%d ",vec2[i]);
	}
	
	
	return 0;
}
