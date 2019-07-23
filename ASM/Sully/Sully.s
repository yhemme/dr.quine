section .data
    filepath db "./Sully_%d.s", 0
    i equ 5
    msg db "echo %3$csection .data%1$c	filepath db %2$c./Sully_%%d.s%2$c, 0%1$c	i equ %5$d%1$c	msg db %2$c%4$s%2$c, 0%1$c%1$csection .text%3$c", 0

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

    lea rdi, [rsp]
    lea rsi, [rel filepath]
    mov rdx, i
    call _asprintf

    mov rdi, [rsp]
    mov rsi, 0
    call _access
    test rax, rax
    js parent
    mov QWORD[rsp], i - 1
    jmp print

parent:
    mov QWORD[rsp], i

print:
    lea rdi, [rsp + 8]
    lea rsi, [rel msg]
    mov rdx, 10
    mov rcx, 34
    mov r8, 39
    mov r9, msg
    call _asprintf
    mov rdi, [rsp + 8]
    call _system
    leave
    ret