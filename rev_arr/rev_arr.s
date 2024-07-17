 
  default rel

  section .note.GNU-stack noalloc noexec nowrite progbits

  section .rdata

  section .data

  section .text

; rdi, rsi, rdx, rcx, r8, r9


; extern void rev_arr(int64_t const* src, int64_t* dst, size_t n);
  global rev_arr

rev_arr:
  mov r9, rdx 
  sub r9, 1

  xor r10, r10
  loop:
    mov [rsi + 8*r10], [rdi + 8*r9] 
    dec r9 
    inc r10
    cmp r10, rdx
    jnz loop

  ret

