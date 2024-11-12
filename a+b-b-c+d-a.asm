.model small
.stack 100h
.data 
q db 10,13,'Enter the number $'
a db 10,13,'a= $'
b db 10,13,'b= $'
c db 10,13,'c= $'
d db 10,13,'d= $'

aa db ?
bb db ?
cc db ?
dd bd ?

w db 10,13,'The result: $' 


.code

main proc
    mov ax,@data
    mov ds,ax
    
    
    mov ah,9
    lea dx,q
    int 21h
    
    mov ah,9
    lea dx,a
    int 21h  
    
    mov ah,1
    int 21h
    mov a,al
    
            
      
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,1
    int 21h
    mov b,al
      
    mov ah,9
    lea dx,c
    int 21h 
    
    mov ah,1
    int 21h
    mov c,al
    
      
    mov ah,9
    lea dx,d
    int 21h
            
     mov ah,1
    int 21h
    mov d,al
    
    add bl,a
    add bl,b
    sub bl,c
    add bl,d
    sub bl,a
             
             
             
    mov ah,9
    lea dx,w
    int 21h 
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    


