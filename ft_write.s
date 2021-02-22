; DESCRIPTION:
; --> man 2 write

segment .text
	global	_ft_write

_ft_write:					; _ft_write(rdi, rsi, rdx) || ssize_t ft_write(int fd, const void *buf, size_t count);
	mov rax, 0x2000004		; set call to write
    syscall					; call rax (write)

; RETURN VALUE:
; Upon successful completion the number of bytes which were written is returned. 
; Otherwise, a -1 is returned and the global variable errno is set to indicate the error.