section	.text		; declaring our .text segment
		global	_start	; telling where program execution should start

	_start: 		; this is where code starts getting exec'ed
		pop	ebx	; get first thing off of stack and put into ebx
		dec	ebx	; decrement the value of ebx by one
		pop	ebp	; get next 2 things off stack and put into ebx
		pop	ebp
