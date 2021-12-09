.section .data
.global s1
.global s2


.section .text
.global crossSumBytes				# short crossSumBytes(void)

crossSumBytes:

	movw s1(%rip),%ax			# Move s1 para um endereço de 16bits, 'AX'
	movw s2(%rip),%dx			# Move s2 para um endereço de 16bits, 'DX'
	
	addb %dh, %al				# Soma-se o byte mais significativo de s2 ao byte menos significativo de s1
	addb %ah, %dl				# Soma-se o byte mais significativo de s1 ao byte menos significativo de s2
	

	movb %dl, %ah				# Movemos o resultado da segunda soma para o byte mais significativo de s1
	
	
	ret
