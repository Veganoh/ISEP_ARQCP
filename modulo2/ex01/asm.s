.section .data
.global op1
.global op2
.global res
.section .text
.global sum 				# void sum(void)


sum:
	movl op1(%rip), %ecx 	# place op1 in ecx
	movl op2(%rip), %eax 	# place op2 in eax
	addl %ecx, %eax 	 	# add ecx to eax. Result is in eax
	movl %eax, res(%rip) 	# copy the result to res
	ret
