org 100h
include "emu8086.inc"

mov ax, num
test al, 80h     ; Test the most significant bit
jnz negative     ; Jump if the most significant bit is set (negative)  

PRINT "Musbat-Positive"   ; if the num is positive prints "Musbat-Positive"
jmp stop

negative:
PRINT "Manfiy-Negative"   ; if the num is negative prints "Manfiy-Negative"

stop:
ret
num dw -127
end