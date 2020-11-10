segment .text
	global	_ft_read

_ft_read:					; _ft_read(rdi, rsi, rdx) || ssize_t ft_read(int fildes, void *buf, size_t nbyte);
	mov rax, 0x2000003		; set call to read
	syscall					; call rax (read)