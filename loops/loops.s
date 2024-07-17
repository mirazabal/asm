 
  default rel

  section .note.GNU-stack noalloc noexec nowrite progbits

  section .rdata

  section .data

  section .text

; rdi, rsi, rdx, rcx, r8, r9

;extern int64_t sum(int64_t* val, size_t sz);
  global sum

sum:
  xor rax, rax
  cmp rsi, 0 
  je Done
  
  xor r11, r11

  Loop: 
    mov r10,[rdi + 8*r11]  
    add rax, r10  

    inc r11
    cmp r11, rsi
    jle Loop

  Done:
    ret
