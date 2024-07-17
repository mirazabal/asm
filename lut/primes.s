 
  default rel

  section .note.GNU-stack noalloc noexec nowrite progbits

  section .rdata

; dd = double word, dq = qword, dw = word, db = byte 
primes_lut: dd  2,  3,  5,  7, 11, 13, 17, 19, 23
            dd 29, 31, 37, 41, 43, 47, 53, 59
            dd 61, 67, 71, 73, 79, 83, 89, 97
  global g_num_primes

  g_num_primes: dd ($ - primes_lut) / 4

  section .data

  section .text
  
  global prime

;extern "C" uint32_t prime(size_t idx);
prime:
  cmp rdi, 25 
  jge invalid_idx
  
  lea r10, [primes_lut] 
  mov eax, [r10 + rdi*4] 
  ret

invalid_idx:
  xor eax, eax
  ret
