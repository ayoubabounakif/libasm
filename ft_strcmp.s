segment	.text
	global	_ft_strcmp

_ft_strcmp:							; _ft_strcmp(rdi, rsi) || ft_strcmp(const char *s1, const char *s2)
	xor		rax, rax				; initialize i = 0 (make the register rax as the counter itself)
	cmp		rdi, 0					; check if rdi (s1) has null byte at the beggining
	jz		_check_null				; if TRUE jump to _check_null
	cmp		rsi, 0					; check if rsi (s2) has null byte at the beggining
	jz		_check_null				; if TRUE jump to _check_null
	jmp		_check

_check_null:
	cmp		rdi, rsi
	jz		_equal					; s1 == s2 (NULL)
	jg		_superior				; s1 == NULL
	jl		_inferior				; s2 == NULL

_check:
	cmp		byte [rdi + rax], 0		; _check if rdi[rax] (s1[i] == 0)
	je		_last_char				; if yes jump to _last_char
	cmp		byte [rsi + rax], 0		; _check if rsi[rax] (s1[i] == 0)
	je		_last_char				; if yes jump to _last_char
	jmp		_compare

_compare:
	mov		dl, byte [rsi + rax]	; move the byte on rsi[rax] (s2[i]) to dl (tmp)
	cmp		byte [rdi + rax], dl	; compare the byte on [rdi + rax] (s1[i]) with (s2[i]) that is stored on dl (tmp)
	je		_increment				; if they're the same increment rax and repeat
	jne		_last_char				; if != jump to _last_char

_increment:
	inc		rax						; increment the counter (used as an array index)

_last_char:
	mov		dl, byte [rdi + rax]	; move the byte on rdi[rax] (s1[i]) to dl (tmp)
	sub		dl, byte [rsi + rax]	; substract rsi[rax] (s2[i]) from dl (tmp -= s2[i])
	cmp		dl, 0					; compare dl to 0 (tmp == 0)
	jg		_superior				
	jz		_equal
	jl		_inferior

_superior:
	mov		rax, 1					; set rax == 1 (ret < 0)
	ret

_inferior:
	mov		rax, -1					; set rax == - 1 (ret > 0)
	ret

_equal:
	mov		rax, 0					; set rax == 0
	ret