 
  default rel

  section .note.GNU-stack noalloc noexec nowrite progbits

  section .rdata

  section .data

  section .text

; rdi, rsi, rdx, rcx, r8, r9

; extern int32_t cmp_arr(int32_t *a, int32_t *b, size_t n);
  global cmp_arr

cmp_arr:
  mov rcx, rdx 
  mov rax, rdx 
  ; rsi and rdi are the pointers
  ; rcx is the n
  repe cmpsd

  jz done
  sub rax, rcx
  sub rax, 1

  done:
    ret



