
 # 1->%rdi 2->%rsi 3->%rdx 4->%rcx 5->%r8 6->%r9 #free %r10 %r11 

.section .text
 .global call_func 
 
 call_func:
   # prologue

    pushq  %rbx     # save registers 
    pushq  %r12 
    pushq  %r13 
    pushq  %r14 
    pushq  %r15 
    
    movq   $0x0eadbeef,%rbx   # place marker on registers 
    movq   $0x12345678,%r12
    movq   $0x07654321,%r13 
    movq   $0x76543218,%r14 
    movq   $0x65432187,%r15 
   
    movq   %rdi,%rax
    movq   %rsi,%rdi
    movq   %rdx,%rsi
    movq   %rcx,%rdx
    movq   %r8,%rcx
    movq   %r9,%r8         # Only supports 5 parameters !!!!!!!!    
    

    call  *%rax              # call  function 

    cmpq   $0x0eadbeef,%rbx  # register has changed ? 
    jne    0                #  illegal jump to crash! 
    
    cmpq   $0x12345678,%r12  # register has changed ? 
    jne    0                #  illegal jump to crash! 
    
    cmpq   $0x07654321,%r13  # register has changed ? 
    jne    0                #  illegal jump to crash! 
    
    cmpq   $0x76543218,%r14  # register has changed ? 
    jne    0                #  illegal jump to crash! 
    
    cmpq   $0x65432187,%r15  # register has changed ? 
    jne    0                #  illegal jump to crash! 
    
    popq %r15               # restore registers 
    popq %r14 
    popq %r13 
    popq %r12 
    popq %rbx 
    
    
     # epilogue
     ret


