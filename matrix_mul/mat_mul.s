
  default rel

  section .note.GNU-stack noalloc noexec nowrite progbits

  section .rdata

  section .data

  section .text

global mat_mul


; extern void mat_mul(int64_t const* a, size_t ra, size_t ca, int64_t const* b, size_t cb, int64_t*c);

; rdi = a, rsi = ra, rdx = ca, rcx = b, r8 = cb, r9 = c
mat_mul:

; https://www.geeksforgeeks.org/c-matrix-multiplication/

  push r11
  push r12
  push r13
  push r14

  xor r10, r10 ; i 
loop_i: 
  xor r11, r11 ; j
loop_j:
  xor r12, r12 ; k 
  xor r13, r13 ; temp value
  xor r14, r14 ; accumulator
loop_k:
  mov rax, r10
  imul rax, rsi ; i*R1
  add rax, r12 ; rax = i*R1 + k 
  mov r13, rax
  
  ; mov rax, [rdi + 8*r15] ;    

  mov rax, r12 
  imul rax, rdx ; C1*k 
  add rax, r11 ; rax = k*C1 + j 
  mov rax, [rcx +8*rax]
  imul rax, [rdi + 8*r13];  rax = 

  add rax, r14 ; rax = rax + r15
  mov r14, rax

  inc r12 
  cmp r12, rdx ; R2 == C1  
  jne loop_k  

  mov rax, r10 
  imul rax, rsi  
  add rax, r11  
  mov [r9 + 8*rax], r14

  inc r11 ; j
  cmp r11, r8 ; C2
  jne loop_j  

  inc r10 ; i 
  cmp r10, rsi ; R1 
  jne loop_i  

end:
  pop r14
  pop r13
  pop r12
  pop r11

  ret
