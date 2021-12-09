#include <stdio.h>
#include "where_is.h"

int main(){
	
	char vec[100] = {"CxCxCxCCCCCCCCCCC"};
	char *ptr = vec;
	int result[100];
	int *ptrResult = result;
	
	int size = where_is(ptr,'x',ptrResult);
	
	for( int i = 0; i < size; i++){
		
		printf("%d ",*(ptrResult + i));
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	return 0;
}
