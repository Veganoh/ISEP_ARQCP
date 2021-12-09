void swap(int* vec1, int* vec2, int size){

	int temp;
	
	
	// Faz o método clássico de swap do array
	
	for(int i = 0; i < size; i++){
		
		temp = *(vec1 + i );
		*(vec1 + i ) = *(vec2 + i);
		*(vec2 + i ) = temp;	
	}

}
