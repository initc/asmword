section .data
section .text
   

    global _start

_start:
   nop;这里进行我的day1的汇编代码
   mov ax,07e5fh  ;移动16位数到ax中
   mov bx,ax      
   mov cl,ah
   mov ch,al
   xchg eax,ebx
   nop

  


