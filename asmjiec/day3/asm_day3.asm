section .data 
xiaojie db "hello xiaojie"
section .text

global  main

    main:

    mov   eax,0FFFFFFFFh   
    mov   eax,0ddh
    mov   bx,0cch
    neg   bx
    mov   ecx,ebx
    movsx edx,bx
    mov  eax,0FFFFffffh
    mov  bx,0FFFFh
    div  bx
    mul  bl
