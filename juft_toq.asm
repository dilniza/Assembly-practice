org 100h
mov bp, offset numbers
mov di, 0
mov cx, 6
mov si, 0
mov sp, 0
mov dx, 0

lup:
mov al, [bp+di]
inc di
mov bl, 2h
mov bh, al
div bl
cmp ah, 0

jz JEven
jne JOdd

JEven:
xchg si, sp
mov even[si], bh  ; not the answer but the number itself
inc si
xchg sp, si
jmp stop

JOdd:
xchg si, dx
mov odd[si], bh
inc si
xchg dx, si

stop:
loop lup

ret
numbers db 44h, 12h, 73h, 23h, 43h, 64h
even db 3 dup(?)
odd db 3 dup(?)
end