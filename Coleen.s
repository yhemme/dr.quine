;bienvenue
section .data
hello:
	.msg db ";bienvenue%1$csection .data%1$chello:%1$c	.msg db %2$c%3$s%2$c, 0%1$c	.len equ $ - hello.msg%1$csection .text%1$c	global start%1$c	global _main%1$c	extern _printf%1$c%1$cstart:%1$c	call _main%1$c	ret%1$c%1$c_main:%1$c	;lets do it%1$c	push rbp%1$c	call pre_reg%1$c	mov rbp, rsp%1$c	sub rsp, 16%1$c	lea rdi, [rel hello.msg]%1$c	call _printf%1$c	leave%1$c	ret%1$c%1$cpre_reg:%1$c	mov rsi, 10%1$c	mov rdx, 34%1$c	lea rcx, [rel hello.msg]%1$c	ret%1$c", 0
	.len equ $ - hello.msg
section .text
	global start
	global _main
	extern _printf

start:
	call _main
	ret

_main:
	;lets do it
	push rbp
	call pre_reg
	mov rbp, rsp
	sub rsp, 16
	lea rdi, [rel hello.msg]
	call _printf
	leave
	ret

pre_reg:
	mov rsi, 10
	mov rdx, 34
	lea rcx, [rel hello.msg]
	ret
