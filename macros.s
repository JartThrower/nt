#Read from stdin
.macro readin buffer, buffer_size
movl $SYS_READ, %eax
movl $STDIN, %ebx
movl \buffer, %ecx
movl \buffer_size, %edx
int $LINUX_SYSCALL
.endm
#Print a string to stdout
.macro writeout buffer, buffer_size
movl $SYS_WRITE, %eax
movl $STDOUT, %ebx
movl \buffer, %ecx
movl \buffer_size, %edx
int $LINUX_SYSCALL
.endm
#exit
.macro exit code
movl $SYS_EXIT, %eax
movl \code, %ebx
int $LINUX_SYSCALL
.endm
