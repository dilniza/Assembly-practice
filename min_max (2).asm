org 100h
mov ah, 2
mov al, 3
mov bh, 1
mov bl, 4

mov max_num, ah
mov min_num, ah

cmp max_num, al
jge skip_max1
mov max_num, al
skip_max1:
cmp min_num, al
jle skip_min1
mov min_num, al
skip_min1:
cmp max_num, bh
jge skip_max2
mov max_num, bh
skip_max2:
cmp min_num, bh
jle skip_min2
mov min_num, bh
skip_min2:
cmp max_num, bl
jge skip_max3
mov max_num, bl
skip_max3:
cmp min_num, bl
jle skip_min3
mov min_num, bl
skip_min3:

ret
max_num db ?
min_num db ?
end