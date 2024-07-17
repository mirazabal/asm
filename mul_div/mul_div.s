
  default rel

  section .note.GNU-stack noalloc noexec nowrite progbits


  section .text

global mul
global div

; extern int32_t mul(int32_t a, int32_t b);
mul:
  imul edi, esi
  mov eax, edi
  ret


;extern result_t div(int32_t a, int32_t b);
div:
  ; https://www.aldeid.com/wiki/X86-assembly/Instructions/div
  mov edx, 0 ; clear dividend
  mov eax, edi
  idiv esi
  shl rdx, 32 ; the remainder is in edx
  xor rax, rdx
  ret 
  



