; DESCRIPTION:
; --> man strdup

segment	.text
	global  _ft_strdup
    extern	_ft_strlen
    extern	_ft_strcpy
	extern	_malloc
    extern	___error

_ft_strdup:						;_ft_strdup(rdi) || char *ft_strdup(const char *s1);
	mov		rax, 0				; initialize i = 0 (make the register rax as the counter itself)
	jmp		_init

_init:
	push	rdi					; We store the value of s1 in the stack
	call	_ft_strlen			; call ft_strlen(s1) and store the returned value in rax
	add		rax, 1				; increment rax by 1 for null byte
	jmp		_allocate_memory

_allocate_memory:
	call	_malloc				;
	cmp		rax, 0				; check if error
	je		_done				; if rax equal = 0, jump to _done
	mov		rdi, rax			; store the value in rax into rdi
	pop		rsi					; assign the value from the previous push (s2 = s1) to rsi (2nd argument to send to _ft_strcpy)
	jne		_dup				; if rax != 0, jump to _dup

_dup:
	call	_ft_strcpy			; copy rdi in the allocated memory for rsi
	ret

_done:
	ret