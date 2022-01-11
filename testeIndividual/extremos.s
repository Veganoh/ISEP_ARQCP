.section .text
.global extremos

extremos:
	
	# notas encontra-se em '%RDI'
	# n encontra-se em '%ESI'
	# min encontra-se em '%RDX'
	# max encontra-se em '%RCX'
	
	pushq %rbp					# Prologue
	movq %rsp, %rbp

	subq $8,%rsp				# Alocar 8 bits para 1 variável local de 4 bytes
	movl $0,-8(%rbp)			# result = 	0
	movl $0,%r8d				# i = 0
	movq %rdi,%r9				# Guarda-se o pointer das notas
	movw $20,(%rdx)				# Coloca-se uma nota mínima de 20
	movw $0,(%rcx)				# Coloca-se uma nota máxima de 0
		
loop:
	
	cmpl %esi,%r8d				# Loop end?
	je end
								# Preparar chamamento da função
	movl (%r9),%edi				# Colocar o único parametro de 4 bytes em '%EDI'
	pushq %rdi					# Salvaguarda de registos
	pushq %rsi
	pushq %rdx
	pushq %rcx
	pushq %r8
	pushq %r9
	call nota_final				# Usa-se a função e a nota fica guardada em '%AX'
	popq %r9
	popq %r8
	popq %rcx
	popq %rdx
	popq %rsi
	popq %rdi
	

checkConditions:
	cmpw (%rdx),%ax				# Verifica se a nota Minima vai atualizar
	jl updateMin
	
	cmpw (%rcx),%ax				# Verfica se a nota Maxima vai atualizar
	jg updateMax
	
	cmpw $10,%ax
	jge updateResult			# Verifica se a nota é positiva
	
	jmp loopContinuation
	
updateMin:
	movw %ax,(%rdx)				# Coloca a nova nota minima
	jmp checkConditions
	
updateMax:
	movw %ax,(%rcx)				# Coloca a nova nota maxima
	jmp checkConditions
	
updateResult:
	incl -8(%rbp)			   # Result ++
	
loopContinuation:
	
	incl %r8d				   # i++
	addq $4,%r9				   # Próxima nota

	jmp loop

end:
	
	movl -8(%rbp),%eax		   # Resultado para '%EAX'
	
	movq %rbp,%rsp			   # Epilogue
	popq %rbp
	ret
