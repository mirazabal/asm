
  default rel

  section .note.GNU-stack noalloc noexec nowrite progbits


  section .text
; extern int32_t pointer(int32_t* a, int32_t val);
  global pointer

pointer:
  mov [rdi], esi 
  ret


