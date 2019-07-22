%define openFlags 0x0202
%define chmodPerm 0777q
%macro letsgo 0
;bienvenue
section .data
hello:
	.msg db "%4$cdefine openFlags 0x0202%1$c%4$cdefine chmodPerm 0777q%1$c%4$c%macro letsgo 0%1$c;bienvenue%1$csection .data%1$chello:%1$c	.msg db %2$c%3$s%2$c, 0%1$c	.len equ $ - hello.msg%1$c	filename db %2$c./Grace_kid.s%2$c, 0%1$c%1$csection .text%1$c	global start%1$c	global _main%1$c	extern _dprintf%1$c%1$cstart:%1$c	call _main%1$c	ret%1$c%1$c_main:%1$c	enter 16, 0%1$c%1$c	mov rdi, filename%1$c	mov rsi, openFlags%1$c	mov rax, 0x2000005%1$c	syscall%1$c	mov r12, rax%1$c%1$c	mov rax, 0x200000f%1$c	mov rsi, chmodPerm%1$c	lea rdi, [rel filename]%1$c	mov rdx, 10%1$c	syscall%1$c%1$c	mov rdi, r12%1$c	lea rsi, [rel hello.msg]%1$c	mov rdx, 10%1$c	mov rcx, 34%1$c	lea r8, [rel hello.msg]%1$c	mov r9, 37%1$c	call _dprintf%1$c%1$c	leave%1$c	ret%1$c%4$cendmacro%1$c%1$cletsgo", 0
	.len equ $ - hello.msg
	filename db "./Grace_kid.s", 0

section .text
	global start
	global _main
	extern _dprintf

start:
	call _main
	ret

_main:
	enter 16, 0

	mov rdi, filename
	mov rsi, openFlags
	mov rax, 0x2000005
	syscall
	mov r12, rax

	mov rax, 0x200000f
	mov rsi, chmodPerm
	lea rdi, [rel filename]
	mov rdx, 10
	syscall

	mov rdi, r12
	lea rsi, [rel hello.msg]
	mov rdx, 10
	mov rcx, 34
	lea r8, [rel hello.msg]
	mov r9, 37
	call _dprintf

	leave
	ret
%endmacro

letsgo