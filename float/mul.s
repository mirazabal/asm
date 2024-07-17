 
  default rel

  section .note.GNU-stack noalloc noexec nowrite progbits

  section .rdata
  c_to_f dd 1.8 ; 9/5 
  cte_32 dd 32.0
  section .data

  section .text

; rdi, rsi, rdx, rcx, r8, r9
; extern float celsius_fahr(float temp); 

  global  celsius_fahr

;F = (C*1.8)+32
celsius_fahr:
  vmulss xmm0, xmm0, [c_to_f]
  vaddss xmm0, xmm0, [cte_32] 
  ret

