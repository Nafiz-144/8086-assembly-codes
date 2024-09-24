.model small 
.stack 100h
.data 
a db 10,13,'one packet chips for 2 dollar=$'
b db 10,13,'one packet biscuits for 3 dollar=$'
c db 10,13,'three packet chips for 3 dollar=$'
d db ?
e db ?
f db ?
tc db 10,13,'total cost=$'

ta db 10,13,'total amount=$'
tt db ?
r db 10,13,'left after his purches=$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mov d,al
    
    
     mov ah,9
    lea dx,b
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mov e,al
    
     mov ah,9
    lea dx,c
    int 21h 
    
    mov ah,1
    int 21h
    sub al,48
    mov f,al
    
    
    add bl,d
    add bl,e
    add bl,f
    add bl,48
    
     mov ah,9
    lea dx,tc
    int 21h 
    
    mov ah,2
    mov dl,bl
    int 21h 
    
    
     mov ah,9
    lea dx,ta
    int 21h
    
    mov ah,1
    int 21h
    sub al,48
    mov tt,al
    
    mov cl,tt
    sub cl,bl
    add cl,48
    
    mov ah,9
    lea dx,r
    int 21h
    
    mov ah,2
    add cl,48
    mov dl,cl
    int 21h
    
    
    
    
    
    
    
    
    
    
    
    