; DESCRIPTION:
; --> man strcmp

section .text
    global _ft_strcmp

_ft_strcmp:
    mov		rax, 0				; initialize rax = 0
	mov		rbx, 0				; initialize rbx = 0
	jmp		_cmp_loop

_increment:
	inc		rdi					; increment rdi
	inc		rsi					; increment rsi

_cmp_loop:
	mov		al, byte [rdi]		; move the byte on rdi to al (8 of rax) (tmp)
    mov		bl, byte [rsi]		; move the byte on rsi to bl (8 of rbx) (tmp)
    cmp		al, 0				; compare al to null byte
    je		_done				; if null byte, jump to _done
    cmp		bl, 0				; compare bl to null byte
    je		_done				; if null byte, jump to _done
	jmp		_increment			; else just increment
    cmp		al, bl				; if al == bl -> *s1 == *s2
    je		_ft_strcmp			; use recursion
    jne		_done				; if al != bl -> *s1 != *s2, jump to _done

; RETURN VALUE:
; The strcmp() and strncmp() functions return an integer greater than, equal to, or less than 0,
; according as the string s1 is greater than, equal to, or less than the string s2.
; The comparison is done using unsigned characters.
_done:
    sub		rax, rbx			; RETURN VALUES
    ret