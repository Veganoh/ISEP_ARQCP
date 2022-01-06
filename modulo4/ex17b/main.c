#include <stdio.h>
#include "greater_date.h"


unsigned int build_date( int year , int month , int day ) {

	return  (year << 8)  | (month <<24 ) |  day ;
}

int main(){
	
	unsigned int  result = greater_date(build_date(2017,11,11),build_date(12,12,31));
	
	printf("Result: %u \n",result);
	
	
	return 0;
}
