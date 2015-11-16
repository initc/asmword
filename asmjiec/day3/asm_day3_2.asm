section  .data
xiaojie db "xiaojie"
   section  .text
   
  global  main
   main:


   ;测试div指令和mul指令
   mov  ax,0ffh
   mov  bl,04h
   div  bl
   mul  bl
