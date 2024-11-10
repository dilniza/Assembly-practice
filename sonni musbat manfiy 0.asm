org 100h
include "emu8086.inc"

mov ax, num
mov bl, 5
mov bh, 3

cmp ax, 0
je equal         ; jumps if num is 0

test ax, 80h     ; Test the most significant bit
jnz negative     ; Jump if the most significant bit is set (negative)  

mul bl
jmp stop

equal: 
add ax, 7 
jmp stop

negative:
div bh
jmp stop

stop:
ret
num dw -127
end