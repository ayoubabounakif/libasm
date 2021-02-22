; DESCRIPTION:
; --> man 2 write

segment .text
	global	_ft_write
	extern	___error

_ft_write:					; _ft_write(rdi, rsi, rdx) || ssize_t ft_write(int fd, const void *buf, size_t count);
	mov		rax, 0x2000004	; set call to write
    syscall					; call rax (write)
	jc		_error			; error sets carry flag, rax = errno

_error:
	mov		r15, rax		; save errno
	call	___error		; retrieve address to errno
    mov		[rax], r15		; put errno in return value of __error (pointer to errno)
	jmp		_done

_done
	mov		rax, -1
	ret

; RETURN VALUE:
; Upon successful completion the number of bytes which were written is returned. 
; Otherwise, a -1 is returned and the global variable errno is set to indicate the error.
; Example: #define EBADF           9               /* Bad file descriptor */