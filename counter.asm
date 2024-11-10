org 100h           ; string va num dagi qitymatlar sonini sanaydi
mov bl, countN
mov bh, countS

ret
num1 db 12, 14, 17, 15
countN db $-num1
string1 db "men aldadim"
countS db $-string1
end