section .data
	filepath db "./Sully_%d.s", 0
	i equ 5
	msg db "echo %3$csection .data%1$c	filepath db %2$c./Sully_%%d.s%2$c, 0%1$c	i equ %5$d%1$c	msg db %2$c%4$s%2$c, 0%1$c%1$csection .text%1$c	global start%1$c	global _main%1$c	extern _asprintf%1$c	extern _system%1$c	extern _access%1$c%1$cstart:%1$c	call _main%1$c	ret%1$c%1$c_main:%1$c	enter 32, 0%1$c%1$c	mov r10, i%1$c	cmp r10, 0%1$c	jle end%1$c%1$c	lea rdi, [rsp]%1$c	lea rsi, [rel filepath]%1$c	mov rdx, i%1$c	call _asprintf%1$c%1$c	mov rdi, [rsp]%1$c	mov rsi, 0%1$c	call _access%1$c	mov QWORD[rsp], i%1$c	xor rax, -1%1$c	add [rsp], rax%1$c%1$c	lea rdi, [rsp + 8]%1$c	lea rsi, [rel msg]%1$c	mov rdx, 10%1$c	mov rcx, 34%1$c	mov r8, 39%1$c	mov r9, msg%1$c	call _asprintf%1$c	mov rdi, [rsp + 8]%1$c	call _system%1$c%1$cend:%1$c	leave%1$c	ret%3$c > Sully_%5$d.s && nasm -f macho64 Sully_%5$d.s -o Sully_%5$d.o && ld -o Sully_%5$d Sully_%5$d.o -macosx_version_min 10.8 -lSystem && rm Sully_%5$d.o && ./Sully_%5$d", 0

section .text
	global start
	global _main
	extern _asprintf
	extern _system
	extern _access

start:
	call _main
	ret

_main:
	enter 32, 0

	mov r10, i
	cmp r10, 0
	jle end

	lea rdi, [rsp]
	lea rsi, [rel filepath]
	mov rdx, i
	call _asprintf

	mov rdi, [rsp]
	mov rsi, 0
	call _access
	mov QWORD[rsp], i
	xor rax, -1
	add [rsp], rax

	lea rdi, [rsp + 8]
	lea rsi, [rel msg]
	mov rdx, 10
	mov rcx, 34
	mov r8, 39
	mov r9, msg
	call _asprintf
	mov rdi, [rsp + 8]
	call _system

end:
	leave
	ret
