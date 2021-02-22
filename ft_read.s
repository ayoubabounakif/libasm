; DESCRIPTION:
; --> man 2 read

segment .text
	global	_ft_read
	extern ___error

_ft_read:					; _ft_read(rdi, rsi, rdx) || ssize_t ft_read(int fildes, void *buf, size_t nbyte);
	mov		rax, 0x2000003	; set call to read
	syscall					; call rax (read)
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
; If successful, the number of bytes actually read is returned. 
; Upon reading end-of-file, zero is returned. 
; Otherwise, a -1 is returned and the global variable errno is set to indicate the error.
; Example: #define EBADF           9               /* Bad file descriptor */