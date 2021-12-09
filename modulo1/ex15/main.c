#include <stdio.h>
#include "populate.h"
#include "check.h"
#include "inc_nsets.h"

int main(){

	int n = 100;
	int vec[n];
	int* ptr = vec;
	int limit = 20;
	int x;
	int y;
	int z;
	extern int nSets;
	
	populate(ptr,n,limit);
	
	
	for( int i = 0; i < n; i++){
		
		printf("%d ",vec[i]);
		
		
	}
	
	for(int i = 1; i < n - 1; i++){
		
		x = vec[i-1];
		y = vec[i];
		z = vec[i+1];
	
		if (check(x,y,z) == 1 ) inc_nsets();
	
	}
	
	printf("\nNumber of sets: %d\n",nSets);

	return 0;
}
