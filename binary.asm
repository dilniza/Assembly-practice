org 100h

mov dl, binary
mov dh, revers
mov si, 0
mov cx, 4
mov di, 3

lup:
mov dh[di], [dl+si]
inc si
dec di
loop lup

mov al, revers
mov di, 0
mov bl, 2

jump:
cmp al, 0
jne notEqual 
je equal

notEqual:
cmp di, 0
je equalZero
cmp al, 1
je equalOne

equalZero: 
add bh, 1
jmp stop

equalOne:
pop cx
mov cx, di 
l:
mul bl
loop l

push cx

equal:
stop:
inc di 
jcxz zero
jmp jump

zero:
mov result, bh

ret
binary db 1011b
revers db 4 dup(?)
result db ?

end