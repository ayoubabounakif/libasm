section	.text
	global	ft_strlen

ft_strlen:
	xor	rax, rax
	jmp	_start

increment:
	inc	rax
	inc	rdi

; This is where the comparaison happens
_start:
	cmp	[rdi], byte 0	; null byte ?
	jz	done

	jmp	increment	; move to next
	jmp	_start

done:
	ret			; cya
