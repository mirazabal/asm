  default rel

  section .note.GNU-stack noalloc noexec nowrite progbits


  section .text

global sum

;extern uint32_t sum(uint32_t m0,uint32_t m1,uint32_t m2,uint32_t m3,uint32_t m4,uint32_t m5,uint32_t m6,uint32_t m7);
; extern int32_t mul(int32_t a, int32_t b);
sum:
  xor rax, rax
  add rax, rdi
  add rax, rsi
  add rax, rdx
  add rax, rcx
  add rax, r8
  add rax, r9
  add rax, [rsp + 8]
  add rax, [rsp + 16]

  ret

