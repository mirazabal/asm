 
  default rel

  section .note.GNU-stack noalloc noexec nowrite progbits

  section .rdata

  section .data

  section .text

; rdi, rsi, rdx, rcx, r8, r9

; extern void cp_arr(int32_t const* src, int32_t* dst, size_t n);
  global cp_arr

cp_arr:
  mov r8, rsi 
  mov rsi, rdi ; rsi source array
  mov rdi, r8  ; rdi destination array 
  mov rcx, rdx ; rcx element count

  rep stosq

  ret

