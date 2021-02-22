; DESCRIPTION:
; --> man strcpy

segment	.text
	global	_ft_strcpy

_ft_strcpy:							; _ft_strcpy(rdi, rsi) || char* ft_strcpy(char *dst, const char *src);
	xor		rax, rax				; initialize i = 0 (make the register rax as the counter itself)
	cmp		rsi, 0					; check if rsi has null byte at the beggining
	jz		_done					; if rsi == 0 done
	jmp		_copy_loop				; jumping to the _copy_loop function

_increment:
	inc		rax						; increment the counter (used as an array index)

_copy_loop:
	mov		dl, byte [rsi + rax]	; move the byte on rsi[rax] (src[i]) to dl (tmp)
	mov		byte [rdi + rax], dl	; move what's on the tmp byte to rdi[rax] (dst[i])
	cmp		dl , byte 0				; check if null byte
	jnz		_increment				; if rsi then increment

_done:
	mov		rax, rdi				; return rax after you put what's on dst (rdi) on it
	ret