section	.text
	global	ft_write

ft_write:
	jmp	_start

_start:
	mov	rax, 1
	syscall
