#include <stdio.h>
#include "find_word.h"

int main(){

	char string[] = "xaixrarrxrt xrt xrt xrt";
	char word[] = "xrt";
	char* ptr = find_word(word,string);
	printf("%c \n",*ptr);



	return 0;
}
