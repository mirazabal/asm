 
  default rel

  section .note.GNU-stack noalloc noexec nowrite progbits

  section .rdata

  section .data

  section .text

; rdi, rsi, rdx, rcx, r8, r9

;extern int32_t min_3(int32_t a, int32_t b, int32_t c);
  global min_3

min_3:
  mov eax, edi
  cmp edi, esi  
  jle min_3_f1
  mov eax, esi

min_3_f1:
  cmp eax, edx
  jle min_3_f2 
  mov eax, edx

min_3_f2:
  ret


;extern int32_t min_3_cmov(int32_t a, int32_t b, int32_t c);
; rdi, rsi, rdx, rcx, r8, r9
  global min_3_cmov

min_3_cmov:
  mov eax, edi
  cmp eax, esi
  cmovg eax, esi
  cmp eax, edx
  cmovg eax, edx
  ret
