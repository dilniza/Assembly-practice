org 100h
lea bp, array
mov di, 0
mov bh, 0
mov bl, 2
mov cx, 20

lup:
mov al, bh
inc bh
div bl

cmp ah, 0
jnz notequal
jz back

notequal:
mov [bp+di], bh
inc di

back:
mov ah, 0
loop lup

ret
array db 10 dup(?)
end