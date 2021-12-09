.section .data
.global n1
.global n2
.global op

.section .text
.global calculator				# int calculator(void)


calculator:

	movl n1(%rip),%eax			# Coloca que n1 num endereço de 32bits, 'EAX'
	movl op(%rip),%ecx
		
	cmpl $0,n2(%rip)
	je jmp_div0
			
	cmpl $0,%ecx				# Verifica se é para fazer uma operação de soma
	je jmp_sum
	
	cmpl $1,%ecx				# Verifica se é para fazer uma operação de subtração
	je jmp_sub
	
	cmpl $2,%ecx				# Verifica se é para fazer uma operação de multiplicação
	je jmp_mul
	
	cmpl $3,%ecx				# Verifica se é para fazer uma operação de divisão
	je jmp_div
	
	cmpl $4,%ecx				# Verifica se é para fazer uma operação de mod
	je jmp_mod
	
	cmpl $5,%ecx				# Verifica se é para fazer uma operação de quadrado
	je jmp_pwr2
	
	cmpl $6,%ecx				# Verifica se é para fazer uma operação de cubo
	je jmp_pwr3
	
	jmp end						# Caso não tenha sido introduzido um valor válido o programa acaba


jmp_div0:
	movl $0,%eax
	jmp end
	
jmp_sum:
	
	addl n2(%rip),%eax
	jmp end
	
jmp_sub:

	subl n2(%rip),%eax
	jmp end
	
jmp_mul:
	
	imul n2(%rip),%eax
	jmp end
	
jmp_div:

	cdq
	movl n2(%rip),%ecx
	idivl %ecx
	jmp end
	
jmp_mod:
	
	cdq
	movl n2(%rip),%ecx
	idivl %ecx
	movl %edx,%eax
	jmp end
	
jmp_pwr2:

	movl n1(%rip),%edx
	imul %edx,%eax
	jmp end
	
jmp_pwr3:
	movl n1(%rip),%edx
	imul %edx,%eax
	imul %edx,%eax
	jmp end
	
	
end:	
	ret
