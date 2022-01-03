.section .text
.global call_proc

call_proc:

	## PROLOGUE ##
	pushq %rbp 
	movq %rsp,%rbp 
	
	subq $11,%rsp			# Allocates 11 bytes for local variables
	pushq %r10
	pushq %r11
	
	movl $1,-4(%rbp)		# x1 = 1
	movl $2,-8(%rbp)		# x2 = 2
	movw $3,-10(%rbp)		# x3 = 3
	movb $4,-11(%rbp)		# x4 = 4
	
	movl -4(%rbp),%edi		# x1 em '%EDI'
	movl -8(%rbp),%edx		# x2 em '%EDX'
	movw -10(%rbp),%r8w		# x3 em '%R8W'
	movb -11(%rbp),%r10b	# x4 em '%R10B'

	
	leaq -4(%rbp),%rsi		# p1 em 'RSI'
	leaq -8(%rbp),%rcx		# p2 em '%RCX'
	leaq -10(%rbp),%r9		# p3 em '%R9'
	leaq -11(%rbp),%r11		# p4 em '%R11'

	
	pushq %r11 				# 8th parameter
	pushq %r10				# 7th parameter
	call proc
	addq $16,%rsp			# Clean 7th and 8th parameters
	
	movswl -10(%rbp),%eax	# x3 em '%EAX'
	movsbl -11(%rbp),%ecx	# x4 em '%ECX'
	subl %ecx,%eax			# x3 - x4
	
	movl -4(%rbp),%ecx		# x1 em '%ECX'
	addl -8(%rbp),%ecx		# x2 + x1 
	
	imul %ecx,%eax			# (x1 + x2) * (x3 - x4)
	
	popq %r11
	popq %r10
	
	## EPILOGUE ##
	movq %rbp,%rsp
	popq %rbp

ret
