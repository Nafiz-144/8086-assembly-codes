.model small 
.stack 100h
.data 
a db 'Enter a Word in Numeric Language:$'
b db ?
c db ?
d db ?
e db ?
f db 10,13,'The english word for 5024 is : $'

g db ?
h db ?
k db ?
l db 'The englis word for 106 is : $'
.code
main proc
    mov ax,@data 
    mov ds,ax
    
    mov ah,9
    lea dx,a   ;a
    int 21h
    
    mov ah,2
    mov dl,13
    int 21h    ;new line
    mov dl,10
    int 21h
    
    
    mov ah,1
    int 21h   ;input
    mov b,al
    
     mov ah,1
    int 21h      ;input
    mov c,al
    
     mov ah,1
    int 21h     ;input
    mov d,al
    
     mov ah,1
    int 21h     ;input
    mov e,al 
    
    mov ah,9
    lea dx,f  ;f
    int 21h  
    
    mov ah,2
    add b,17  ;add 17 for b and output
    mov dl,b
    int 21h
    
    
    mov ah,2
    add c,17
    mov dl,c   ;add 17 for c and output
    int 21h
    
    mov ah,2
    add d,17    ;add 17 for d  and output 
    mov dl,d
    int 21h
    
    mov ah,2
    add e,17   ;add 17 for e and output
    mov dl,e
    int 21h
    
     mov ah,2
    mov dl,13
    int 21h
    mov dl,10
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
    int 21h    ;inpu g
    mov g,al
    
     mov ah,1
    int 21h      ;inpu h
    mov h,al
    
     mov ah,1
    int 21h    ;inpu k
    mov k,al
    
    
    mov ah,2
    mov dl,13
    int 21h
    mov dl,10
    int 21h
    
    mov ah,9
    lea dx,l
    int 21h
    
    
    
    mov ah,2
    add g,17   ;output
    mov dl,g
    int 21h
    
    mov ah,2
    add h,17    ;output
    mov dl,h
    int 21h
    
    mov ah,2
    add k,17
    mov dl,k      ;output
    int 21h
    
            
    exit:
    mov ah,4ch
    int 21h
    main endp
end main        
    
    