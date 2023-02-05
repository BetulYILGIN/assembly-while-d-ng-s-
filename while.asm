mov ax,5
mov bx,10 
mov cx,4
mov dx,3 
mov ah,0
basla:
cmp ax,bx 
jle ana
  ;jmp bitir 
ana:
cmp ax,cx
jg yap1
cmp bx,dx
jg yap1
jmp yap2
yap1:
add ah,10
jmp yap2
yap2:
inc ax
end


