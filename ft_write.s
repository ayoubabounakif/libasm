segment .text
	global	_ft_write

_ft_write:					; _ft_write(rdi, rsi, rdx) || ssize_t ft_write(int fd, const void *buf, size_t count);
	mov rax, 0x2000004		; set call to write
    syscall					; call rax (write)