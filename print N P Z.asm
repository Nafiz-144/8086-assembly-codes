.model small 
.stack 100h
.code
main proc
    mov ah,1
    int 21h
    sub al,'0'
    
    cmp al,0
    jl put_n
    je put_z
    jmp put_p
    
    put_n: 
    mov dl,'n'
    mov ah,2
   
    int 21h
    jmp exit
    
    
     put_z: 
    mov dl,'z'
    mov ah,2
    
    int 21h
    jmp exit
    
  
    
    
    put_p:
     
    mov dl,'p'
    mov ah,2
   
    int 21h
    jmp exit 
    
    exit:
    
    
    
     