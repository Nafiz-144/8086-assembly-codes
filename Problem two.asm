.model small 
.stack 100h
.data 
a db 'Enter a Word in Numeric Language:$'
b db ?
c db ?
d db ?
e db ?
f db 10,13,'The word for 5024 : $'

g db ?
h db ?
k db ?
l db 10,13,'The word for 106 : $'
.code
main proc
    mov ax,@data 
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,2
    mov dl,13
    int 21h
    mov dl,10
    int 21h
    
    
    mov ah,1
    int 21h
    mov b,al
    
     mov ah,1
    int 21h
    mov c,al
    
     mov ah,1
    int 21h
    mov d,al
    
     mov ah,1
    int 21h
    mov e,al 
    
    mov ah,9
    lea dx,f
    int 21h  
    
    mov ah,2
    add b,17
    mov dl,b
    int 21h
    
    
    mov ah,2
    add c,17
    mov dl,c
    int 21h
    
    mov ah,2
    add d,17
    mov dl,d
    int 21h
    
    mov ah,2
    add e,17
    mov dl,e
    int 21h
    
    mov ah,9
    lea dx,a
    int 21h
    
     mov ah,2
    mov dl,13
    int 21h
    mov dl,10
    int 21h
    
    
    mov ah,1
    int 21h
    mov g,al
    
     mov ah,1
    int 21h
    mov h,al
    
     mov ah,1
    int 21h
    mov k,al
    
    mov ah,9
    lea dx,l
    int 21h
    
    
    
    mov ah,2
    add g,17
    mov dl,g
    int 21h
    
    mov ah,2
    add h,17
    mov dl,h
    int 21h
    
    mov ah,2
    add k,17
    mov dl,k
    int 21h
    
            
            
    
    