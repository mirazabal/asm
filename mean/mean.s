 default rel

  section .note.GNU-stack noalloc noexec nowrite progbits

  section .rdata
  
  section .data

  section .text

; rdi, rsi, rdx, rcx, r8, r9
; extern float calc_mean(float const* src, size_t n);

  global calc_mean

calc_mean:
  vxorpd xmm0, xmm0
  vcvtsi2ss xmm1, xmm1, rsi 
  loop:
    dec rsi
    vaddss xmm0, xmm0, [rdi+4*rsi]

    cmp rsi, 0
    jne loop

    vdivss xmm0, xmm0, xmm1
    
    ret

