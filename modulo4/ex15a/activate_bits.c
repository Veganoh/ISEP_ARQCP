int activate_bits(int a, int left, int right){
	
	
	int i;
	
	for(i = 0; i < right; i++){
		
		a |= 1 << i; 
		
	}
	
	for(i = left + 1; i < 32; i++){
		
		
		a |= 1 << i;
		
	}
	
	return a;
}
