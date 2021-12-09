#include <stdio.h>
#include "needed_time.h"

short current=0,desired=0;
int res;

int main(void) {
	
	
	printf("Valor de current:");
	scanf("%hd",&current);
	
	
	printf("Valor de desired:");
	scanf("%hd",&desired);
	

	res = needed_time();
	printf("(%d)\n", res);
	
	return 0;
}
