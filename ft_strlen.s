segment	.text
	global  _ft_strlen

_ft_strlen:					; _ft_strlen(rdi) || size_t ft_strlen(const char *s);
	xor	rax, rax			; initialize i = 0 (make the register rax as the counter itself)
	jmp	_loop				; jumping to the _loop function

_increment:					; incrementation function
	inc	rax					; increment the counter
	inc rdi					; increment the array

_loop:
	cmp	[rdi], byte 0		; compare the array index with null byte
	jz	_done				; if found zero then ret rax and finish

	jmp _increment			; else increment the array to the next index and the counter too
	jmp	_loop				; go into the loop again until you find the null byte

_done:
	ret