.section .data
.global ptrvec
.global num

.section .text
.global vec_avg

vec_avg:

		
	call vec_sum
	movswl num(%rip),%ecx

		
	cmpl $0,%ecx
	je zero
	
	cdq
	idivl %ecx
	jmp end
	
zero:
	movl $0,%eax
	
	
end:

	ret
