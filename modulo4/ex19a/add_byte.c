void add_byte(char x, int *vec1, int *vec2){

	int size = *vec1;	
    *vec2 = size;
    int i;

    for (i = 1; i <= size; i++) {

       *(vec2 + i) = *(vec1 + i);						// Coloca o valor atual de vec1 em vec2
       char tempByte = (char)*(vec2 + i);				// Pega no byte menos significativo de vec2
       tempByte += x;									// Adiciona-se o X ao byte

       int mask = 0xFFFFFF00;							// Cria-se a mascara para limpar o primeiro byte

       *(vec2 + i) &= mask;								// Limpa se o primeiro byte
       *(vec2 + i) |= tempByte;							// Depois é só adicionar o tempByte ao byte do número
   }

}
