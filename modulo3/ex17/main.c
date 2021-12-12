#include <stdio.h>
#include "array_sort.h"


int array[] = {10,0,1};
int* ptrvec = array;
int num = sizeof(array)/sizeof(array[0]);

int main(void) {
	
	
	array_sort();
	
	
	for(int i = 0; i < num; i++){
	printf("%d ",array[i]);
	}
	
	
	return 0;
}
