; DESCRIPTION:
; --> man strdup

; The Stack
; "The Stack" is a frequently-used area of memory designed for functions to use as temporary storage. 
; This is normally where you store values while calling another function: you can't store values in the scratch registers, because the function could change them.  

; The easiest and most common way to use the stack is with the dedicated "push" and "pop" instructions.

; "push" stores a constant or 64-bit register out onto the stack.  The 64-bit registers are the ones like "rax" or "r8", not the 32-bit registers like "eax" or "r8d".  ("push eax" gives an error "instruction not supported in 64-bit mode"; use "push rax" instead.)
; "pop" retrieves the last value pushed from the stack.  Everything you push, you MUST pop again at some point afterwards, or your code will crash almost immediately!

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