#Read from stdin
.macro read_in buffer, buffer_size
movl $SYS_READ, %eax
movl $STDIN, %ebx
movl \buffer, %ecx
movl \buffer_size, %edx
int $LINUX_SYSCALL
.endm
#Print a string to stdout
.macro write_out buffer, buffer_size
movl $SYS_WRITE, %eax
movl $STDOUT, %ebx
movl \buffer, %ecx
movl \buffer_size, %edx
int $LINUX_SYSCALL
.endm
