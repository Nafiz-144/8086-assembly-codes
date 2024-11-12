.model small 
.stack 100h
.data
n db 'Enter Three numbers:...$'
m db 'a=$'
l db 'b=$'
k db 'c=$'
a db ?
b db ?
c db ?
r db 10,13,'The result of the given equation is: $'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,n
    int 21h
    
    
    mov ah,2
    mov dl,13
    int 21h
    mov dl,10
    int 21h
    
     mov ah,9
    lea dx,m
    int 21h 
    
    mov ah,1
    int 21h
      ;input for a
    mov a,al
    
     mov ah,2
    mov dl,13
    int 21h
    mov dl,10
    int 21h
    
    
     mov ah,9
    lea dx,l
    int 21h 
    
    mov ah,1  ;input for b
    int 21h
    
    mov b,al 
    
    mov ah,2
    mov dl,13
    int 21h
    mov dl,10
    int 21h        
            
    mov ah,9
    lea dx,k
    int 21h 
    
    mov ah,1  ;input for c
    int 21h
    
    mov c,al
    
    mov ah,2
    mov dl,13
    int 21h
    mov dl,10
    int 21h
    
     mov ah,9
    lea dx,r
    int 21h 
    
    mov bl,b
    add bl,b
    sub bl,48
    sub bl,c
    add bl,48
    
    mov ah,2
    mov dl,bl
    int 21h
    
    
  
    
    
    
    