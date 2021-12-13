#include <stdio.h>
#include "str_copy_porto2.h"

char string1[] = "One v";
char string2[100];

char* ptr1 = string1;
char* ptr2 = string2;

int main(void) {
	

	str_copy_porto2();
	printf("%s \n", string2);
	
	return 0;
}
