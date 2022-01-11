.section .text
.global nota_final

nota_final:
	
	# aluno encontra-se em '%EDI'
	
	pushq %rbp						# Prologue
	movq %rsp, %rbp
	 
	subq $2,%rsp					# Alocar 2 bits para 1 variável local de 2 bytes	
	
	movl $0x000FFF00,%ecx			# Máscara para pegar o valor da nota de frequência
	andl %edi,%ecx					# Aplica-se a mascara e a nota de frequência fica guardada em '%ECX'
	shrl $8,%ecx					# 'Enconsta-se' completamente o valor à direita e agora a nota fica completamente em '%CX'
	movw %cx,-2(%rbp)				# Nota de frequência guardada
	
	
	movl $0xFFF00000,%ecx			# Máscara para pegar o valor da nota de exame
	andl %edi,%ecx					# Aplica-se a mascara e a nota de exame fica guardada em '%ECX'
	shrl $20,%ecx					# Dá-se um shift de 20 bits para a direita para que a nota de exame fique em '%CX'
	addw %cx,-2(%rbp)				# notafrequencia + notaexame, em -2(%rbp)
	
	movw -2(%rbp),%ax				# Preparar divisão de 16 bits
	cwd
	
	movw $2,%cx						# Divisor em '%CX'
	
	divw %cx						# O quociente fica em '%AX'
	
	movq %rbp,%rsp					# Epilogue
	popq %rbp
	
	ret
