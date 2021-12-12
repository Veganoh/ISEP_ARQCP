#include <stdio.h>
#include "keep_positives.h"


int array[] = {-1,-1,-1};
int* ptrvec = array;
unsigned short num = sizeof(array)/sizeof(array[0]);

int main(void) {
	
	
	
	keep_positives();
	
	for(unsigned short i = 0; i < num ; i++){
		
	printf("%d ",array[i]);
	}
	
	
	return 0;
}
