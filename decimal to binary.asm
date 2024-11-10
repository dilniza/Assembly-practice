org 100h

mov bp, offset decimal 
mov al, [bp]
mov bl, 2
mov di, 7

jamp:
div bl
mov binary[di], ah
dec di
mov ah, 0
cmp al, 0
je equal
jmp jamp
equal: 

ret
decimal db 33h
binary db 8 dup(?) 
end