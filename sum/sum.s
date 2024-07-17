
  default rel

  section .note.GNU-stack noalloc noexec nowrite progbits


  section .text

  global sum

sum:
  add edi,esi
  mov eax,edi
  ret
