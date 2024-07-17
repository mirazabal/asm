 
  default rel

  section .note.GNU-stack noalloc noexec nowrite progbits

  section .rdata

  section .data

  section .text

; rdi, rsi, rdx, rcx, r8, r9

; extern int32_t count_chars(char const * str, char c);
  global count_chars

count_chars:
  mov rdx, rsi ; rdx = c  
  mov rsi, rdi ; rsi = str
  xor r10, r10
  xor r8, r8
  loop:
    lodsb ; load next byte into al from rsi
    test al, al
    jz done
    cmp al, dl
    sete r8b 
    add r10,r8 
    jmp loop
  done:
    mov rax, r10
    ret

