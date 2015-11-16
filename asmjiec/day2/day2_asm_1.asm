section .data
xiaojie  db "XIAOJIE"  ;初始化的数据  存放在内存中的"
section .text

global main
  
  main:
  nop
  mov eax,7
  mov ebx,xiaojie
  lo: 
    add byte [ebx] ,32
    inc ebx
    dec eax
  jnz  lo
  mov eax,1



