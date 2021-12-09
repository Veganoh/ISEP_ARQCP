.section .data
.global op1
.global op2
.equ CONST, 15


.section .text
.global sum_v2				# int sum_v2(void)

sum_v2:

	movl op2(%rip), %eax 	# Coloca op2 no EAX
	movl op1(%rip), %ecx 	# Coloca op1 no ECX
	movl $CONST, %edx		# Coloca CONST no EDX
	
	subl %edx,%eax			# Subtrai o valor de EDX a EAX , neste momento o EAX contêm "(op2 - CONST)"
	subl %edx,%ecx          # Subtrai o valor de EDX a ECX, neste momento o ECX contêm "(op1 - CONST)"
	
	subl %ecx,%eax          # Subtrai o valor de ECX a EAX, neste momente EAX contêm "(op2 - CONST) - (op1 - CONST) = op2 - op1 = -op1 + op2 = (CONST - op1) - (CONST - op2)"
	

	
	ret 	
