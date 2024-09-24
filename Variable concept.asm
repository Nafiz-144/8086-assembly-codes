.model small
.stack 100h
.data
msg_0 db 3          ; Initialize msg_0 with the value 3
msg_1 db ?          ; Uninitialized byte to store user input

.code
main proc
    ; Initialize data segment
    mov ax, @data    ; Load address of data segment into AX
    mov ds, ax       ; Move the value from AX to DS (set up data segment)

    ; Output msg_0 (numeric 3 as ASCII character)
    mov ah, 2        ; Function 2 of INT 21h to display a character
    add msg_0, 48    ; Convert the number 3 into its ASCII equivalent (3 + '0' = '3')
    mov dl, msg_0    ; Load the ASCII value of 3 into DL
    int 21h          ; Call DOS interrupt to display the character
    
    ; New line (carriage return + line feed)
    mov ah, 2        ; Function 2 for character output
    mov dl, 13       ; Carriage return (CR)
    int 21h          ; Output CR
    mov dl, 10       ; Line feed (LF)
    int 21h          ; Output LF

    ; Take a character input from the user
    mov ah, 1        ; Function 1 of INT 21h to take user input
    int 21h          ; Get a character from the user
    mov msg_1, al    ; Store the input character into msg_1
    
    ; New line (carriage return + line feed)
    mov ah, 2        ; Function 2 for character output
    mov dl, 13       ; Carriage return (CR)
    int 21h          ; Output CR
    mov dl, 10       ; Line feed (LF)
    int 21h          ; Output LF

    ; Output the character entered by the user
    mov ah, 2        ; Function 2 to display a character
    mov dl, msg_1    ; Load the input character into DL
    int 21h          ; Call DOS interrupt to display the character

exit:                ; Exit label
    mov ah, 4Ch      ; Function 4Ch to terminate the program
    int 21h          ; Call DOS interrupt to terminate the program

main endp            ; End of main procedure
end main             ; End of the program
