org 100h
mov al, 7
mov ah, 3
mov dl, 5

cmp al, ah
jg greater
cmp ah, dl
jg greater2
mov max, dl
jmp stop

greater2:
mov max, ah
jmp stop

greater:
cmp al, dl
jg greater1
mov max, dl
jmp stop

greater1:
mov max, al

stop:
ret
max db ?
end