.intel_syntax noprefix
.global _start
_start:
mov rax, [rsp]
mov rbx, [rsp + 8]
add rax, rbx
mov rbx, [rsp + 16]
add rax, rbx
mov rbx, [rsp + 24]
add rax, rbx
mov rbx, 4
div rbx
push rax
