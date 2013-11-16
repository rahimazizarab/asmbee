; introductory example; finds the sum of the elements of an array

SECTION .data ; start of data segment

global x
x:    
      dd      1
      dd      5
      dd      2
      dd      18

hello:
      db 'This Sum:  !',10
sum: 
      dd   0
helloLen:  equ $-hello

section .text
        global _start

_start:

      mov  eax,4     ; EAX will serve as a counter for 
                    ; the number words left to be summed 
      mov  ebx,0     ; EBX will store the sum
      mov  ecx, x    ; ECX will point to the current 
                     ; element to be summed
top:  add  ebx, [ecx]
      add  ecx,4     ; move pointer to next element
      dec  eax   ; decrement counter
      jnz top  ; if counter not 0, then loop again
done: mov  [sum],ebx  ; done, store result in "sum"
	; Write 'Hello world!' to the screen
	mov eax,4            ; 'write' system call
	mov ebx,1            ; file descriptor 1 = screen
	mov ecx,hello        ; string to write
	mov edx,helloLen     ; length of string to write
	int 80h              ; call the kernel

	; Terminate program
	mov eax,1            ; 'exit' system call
	mov ebx,0            ; exit with error code 0
	int 80h              ; call the kernel

