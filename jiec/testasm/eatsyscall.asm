;这是我的第一个汇编程序   2015/11/13
section .data ;包含已初始化的数据的段
eatmsg:db "eat at joe's!",10
eatlen: equ $-eatmsg
section .bss ;包含为初始化的数据的段
section .text ;包含代码段
global main ;链接器需要据此找到入口点！
main:
   nop             ;这个无操作指令让gdb非常高兴（见正文）
   mov eax,4       ;指定sys_write 系统调用
   mov ebx,1       ;指定文件描述符1：标准输出
   mov ecx,eatmsg  ;传递显示信息的偏移地址
   mov edx,eatlen  ;传递显示信息的长度
   int 80H         ;指定系统调用来输出文本到标准输出
   mov eax,1       ;指定exit系统调用
   mov ebx,0       ;返回一个零代码
   int 80H         ;进行系统调用来终止程序

