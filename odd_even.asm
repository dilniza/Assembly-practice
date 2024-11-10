org 100h
include "emu8086.inc"

mov ax, numA
mov bx, 2
div bx        ; divides data in ax to data bx reg

cmp dx, 0     ; compares remainder in dx to 0 

je even       ; if data is equal to 0 than jumps to 'even'

PRINT "Odd"   ; if data is not equal to 0 than prints 'odd'
jmp stop

even:         
PRINT "Even"

stop:
ret
NumA dw 36 
end