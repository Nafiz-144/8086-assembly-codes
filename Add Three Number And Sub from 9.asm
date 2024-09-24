.model small
.stack 100h
.data 
a db 10,13,'1 packet of chips for 2 dollar: $'
b db 10,13,'1 packet of biscuits for 3 dollar: $'
c db 10,13,'1 packet of cho for 1 dollar: $'

d db 10,13,'Total Have 9 Dolllar'

f db 10,13,'Siam has left after his purchases $'
         

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
     mov ah,9
    lea dx,b
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
     mov ah,9
    lea dx,c
    int 21h
    
    mov ah,1
    int 21h
    mov cl,al
    
    mov ah,9
    lea dx,d
    int 21h
    
    mov ah,9
    lea dx,f
    int 21h
    
    
    
    add bl,bh 
    add bl,cl
    sub bl,48
    sub bl,9
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    
   


