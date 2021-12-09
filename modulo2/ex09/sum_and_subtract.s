.section .data
.global A
.global B
.global C
.global D


.section .text
.global sum_and_subtract			# long sum_and_subtract(void)

sum_and_subtract:


	movl C(%rip),%eax			# Move C para um endereço de 32bits, 'EAX'
	movsbl A(%rip),%ecx			# Move A para um endereço de 32bits, 'ECX' fazendo extensão do sinal
	addl %ecx,%eax				# Soma-se A a C, o valor fica no endereço 'EAX'
	
	subl D(%rip),%eax			# Substrai-se ao valor em 'EAX', o valor de D
	
	movswl B(%rip),%edx			# Move B para um endereço de 32bits, 'EDX' fazendo extensão do sinal
	
	addl %edx,%eax				# Soma-se ao valor em 'EAX', o valor de C
	
	movslq %eax,%rax
		
	ret
