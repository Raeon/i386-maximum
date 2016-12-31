
SECTION data
numbers	db	3,67,34,222,45,75,54,34,44,33,22,11,66,0

SECTION text
GLOBAL _start

; EAX is current
; EBX is largest
; EDI is index

_start:
	mov	eax, 0		; clear EAX
	mov	ebx, 0		; clear EBX
	mov	edi, numbers	; begin at item zero
	mov	bl, byte [edi]	; first item is by default the largest
	mov	eax, ebx	; current item is first
	inc	edi		; increase index

begin:
	; is it zero? never mind
	cmp	eax, 0
	jz	finish
	
	; is it smaller or equal? next!
	cmp	eax, ebx	; compare CUR to BIGGEST
	jle	next		; if CUR LESS_THAN_OR_EQUAL BIGGEST, go to BEGIN
	
	; is it larger?
	mov	ebx, eax	; EAX is the new largest, store in EBX

next:
	inc	edi		; increase EDI
	mov	al, byte [edi]	; get number at EDI
	jmp	begin		; loop around

finish:
	; end the program
	mov	eax, 1	; sys_exit
	int	0x80
	ret
