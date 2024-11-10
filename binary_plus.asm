org 100h

mov si, offset binary
mov di, offset revers
mov cx, 4

lup:
lodsb
mov [di], al
dec di
loop lup

mov di, offset revers
mov cx, 4
xor bx, bx

jump:
lodsb
cmp al, '0'
jne isOne
jmp nextBit

isOne:
mov ax, 1
shl ax, cl
add bx, ax

nextBit:
loop jump

mov result, bx

ret

binary db 1011b
revers db 4 dup(?)
result dw ?

end
