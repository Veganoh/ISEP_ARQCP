.section .text
.global proc

proc:

	# x1 em '%EDI', p1 em '%RSI', 
	# x2 em '%EDX', p2 em '%RCX',
	# x3 em '%R8W', p3 em '%R9', 
	# x4 em '16(%RBP)', p4 em '24(%RBP)'
	
	
	## PROLOGUE ##
	pushq %rbp 
	movq %rsp,%rbp 
			
	
	movl %edi,(%rsi)		# p1 = x1
	addl %edx,(%rsi)		# p1 = x1 + x2
	
	movl %edx,(%rcx)		# p2 = x2
	subl %edi,(%rcx)		# p2 = x2 - x1
	
	movw %r8w,(%r9)			# p3 = x3
	addw %dx,(%r9)
	
	pushq %rbx				# Guarda-se o '%RBX'
	movb 16(%rbp),%bl		# Obtêm se o x4 da stack
	movq 24(%rbp),%rax      # Obtêm se o p4 da stack
	movb %bl,(%rax)			# *p4 = x4	
	addb %bl,(%rax)			# *p4 = x4 + x4
	popq %rbx
	
	
	## EPILOGUE ##
	movq %rbp,%rsp
	popq %rbp
	
	ret  
