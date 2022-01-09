.section .text
.global activate_2bits

activate_2bits:

	# ptr está em '%RDI'
	# pos está em '%ESI'
	
	pushq %rbp				# Prologue
	movq %rsp, %rbp
	
	movl %esi,%ecx			# Guarda a posição em '%ECX'
	
							# Preparar chamamento da função
	pushq %rsi
	pushq %rcx
	call activate_bit
	popq %rcx
	popq %rsi
	
	movl $31,%esi			# 31
	subl %ecx,%esi			# 31 - n
	
	call activate_bit
	
	movq %rbp,%rsp			# Epilogue
	popq %rbp

	ret
