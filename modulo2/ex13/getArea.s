.section .data
.global base
.global height

.section .text
.global getArea					# int getArea(void)


getArea:

	movl base(%rip),%eax		# Coloca o valor de base num endereço de 32bits, em 'EAX'
	mull height(%rip)			# Multiplica o valor de height pelo valor que está em 'EAX', sendo a destinação 'EDX:EAX'
	movl $2, %ecx				# Move o valor 2 para um endereço de 32bits, em 'ECX'
	divl %ecx					# Divide por dois o valor que está em 'EDX:EAX', o quociente ficará em 'EAX' e o resto em 'EDX'
	
	
	ret

