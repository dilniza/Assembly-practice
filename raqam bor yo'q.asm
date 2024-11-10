org 100h
include "emu8086.inc"
lea bp, var
lea bx, num
mov di, 0
mov si, 0

lup:
mov al, [bp+di] 
mov cx, 10 
lp:
mov ah, [bx+si] 
add ah, 30h 
cmp ah, al        
je print         
inc si 
loop lp
inc di
mov ah, 0
loop lup

PRINT "Raqam yo'q"
jmp stop
print:
PRINT "Raqam bor"
stop:
ret
var db "01tr56"
num db 1, 2, 3, 4, 5, 6, 7, 8, 9, 0 
end