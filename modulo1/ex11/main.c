#include <stdio.h>
#include "palindrome.h"

int main(){
	
	char string[] = "Gateman sees name, garageman sees name tag";
	char* ptr = string;
	
	int result = palindrome(ptr);
	
	printf("\n%d\n", result);









	return 0;
 }
