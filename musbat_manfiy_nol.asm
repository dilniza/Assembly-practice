org 100h
mov di, 0
mov cx, 3

lup:
mov al, num[di] 
cmp al, 0
je equal
js negative
jns positive

equal:
add al, 10  
jmp stop

negative:
sub al, 2
jmp stop

positive:
add al, 1

stop:
mov result[di], al
inc di
loop lup

ret
num db 45h, -45h, 0
result db 3 dup(?)
end