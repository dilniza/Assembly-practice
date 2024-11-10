org 100h
lea bp, array
mov array[0], 9 
mov array[1], 8 
mov array[2], 7 
mov array[3], 2 

mov cx, 4 ; number of elements in the array

lup:
dec cx ; decrement the counter
jz done ; if counter is zero, the array is sorted

mov si, 0 ; start from the first element

lp1:
mov al, [bp+si] ; load the current element
cmp al, [bp+si+1] ; compare with the next element
jle next1 ; if current <= next, go to next1

; else swap the elements
xchg al, [bp+si+1]
mov [bp+si], al

next1:
inc si ; move to the next element
cmp si, cx ; compare with the counter
jl lp1 ; if less, go back to lp1

jmp lup ; repeat the outer loop

done:
ret

array db 4 dup(?)
end
