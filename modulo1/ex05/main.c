#include <stdio.h>
#include "upper2.h"

int main(void)
{

	char str[10] = "abcdef";
	char *p = str;
	upper2(p);
	int i=0;
	
	while(str[i]!='\0'){
		printf("%c",str[i]);
		i++;
	}
	printf("\n");


	return 0;
}
