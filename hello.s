/* This source assembler file can generate an executable file with ‘makefile_hello’ file. */

    .data
msg :    .asciz "Hello everybody !\n"
len = . - msg
.bss
.text
.global _start  
     
_start :
movl $msg,%ecx
movl $len,%edx
movl $1,%ebx
movl $4,%eax
int  $0x80           # appel système
     
exit :  
movl $0,%ebx  /* Ces instructions permettent de terminer le code */
movl $1,%eax
int  $0x80

