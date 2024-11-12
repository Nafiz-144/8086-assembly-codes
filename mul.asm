.model small
.stack 100h  
.data   
n db 10,13,"Enter the value:$"
b db ?
c db ?



.code
main proc
    
    mov ax,@data
    mov ds,ax
     
    mov ah,9
    lea dx,n
    int 21h
    
    
    mov ah,1
    int 21h
    sub al,48
    mov b,al
    
    mov ah,1
    int 21h
    sub al,48
    
    mul b
    aam
    mov bx,ax
    mov ah,2
    mov dl,bh
    add dl,48
    int 21h
    
    mov ah,2
    mov dl,bl
    add dl,48
    int 21h
    
   
   
   
   
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
   
  ; aaa
  ; aas
  ; aam
  ; aad 