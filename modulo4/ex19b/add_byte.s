.section .text
.global add_byte


add_byte:

	# x está em '%DIL'
	# vec1 está em '%RSI'
	# vec2 está em '%RDX'
	
	pushq %rbx

	movl (%rsi),%ecx				# size = vec1[0]
	movl %ecx,(%rdx)				# vec2[0] = size
	movq $1,%rax					# i = 1
	

my_loop:
	cmpl %eax,%ecx
	jl end
	
	movl (%rsi,%rax,4),%ebx		   # Guarda-se o valor de vec1[i] em '%EBX'
	
	pushq %rax
	movb %bl,%al				   # Coloco o byte menos significativo em '%AL'
	addb %dil,%al				   # Adiciono-o x a '%AL'
	movb %al,%bl
	popq %rax
	
	movl %ebx,(%rdx,%rax,4)
	
	incl %eax					  # i++
	jmp my_loop



end:
	popq %rbx
ret
