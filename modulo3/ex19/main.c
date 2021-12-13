#include <stdio.h>
#include "frequencies.h"


char array[] = {2,1,0};
char* ptrgrades = array;
int num = sizeof(array)/sizeof(array[0]);
int result[21];
int* ptrfreq = result;



int main(void) {
	
	
	frequencies();
	
	
	for(int i = 0; i < 21; i++){
	printf("%d ",result[i]);
	}
	
	
	return 0;
}
