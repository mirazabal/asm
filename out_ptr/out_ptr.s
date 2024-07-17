  
  default rel

  section .note.GNU-stack noalloc noexec nowrite progbits


  section .text

  global sum

; extern void sum(int8_t a,int16_t b, int32_t c, int64_t d, int8_t e, int16_t f, int32_t g, int32_t h, int64_t* i); 

sum:
; rax = a+b+c+d
  xor rax, rax
  movzx rax, dil 
  movzx r10, si
  mov r11d, edx
  add rax, rcx
  add rax, r10
  add rax, r11

; r10 = e+f+g+h
  movzx r10, r8b
  movzx r11, r9w
  mov r12d, [rsp + 8]
  mov r13, [rsp + 16]
  add r10, r11
  add r10, r12
  add r10, r13 
  
  add rax, r10
 
  ; move i
  mov r11, [rsp + 24]
  mov [r11], rax

ret
