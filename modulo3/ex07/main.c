#include <stdio.h>
#include "decrypt.h"


char array[] = " adda ";
short size = sizeof(array)/sizeof(array[0]);
char* ptr1 = array;
int result;

int main(void) {
	
	
	
	result = decrypt();
	
	printf("The result is %d and %s\n",result,array);
	

	
	return 0;
}
