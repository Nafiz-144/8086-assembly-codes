; This assembly code adds two single-digit numbers entered by the user.

.model small ; Sets the memory model to small.
.stack 100h ; Allocates 100h bytes for the stack.

.data ; Defines the data segment.
a db 10, 13, 'Enter the first number->: $' ; Prompt for the first number.
b db 10, 13, 'Enter the second number->:$' ; Prompt for the second number.
c db 10, 13, 'Result= $' ; Prompt for the result.

.code ; Defines the code segment.

main proc ; Defines the main procedure.
    mov ax, @data ; Loads the data segment address into AX.
    mov ds, ax ; Sets the data segment register to the loaded address.

    ; Prompts for the first number and reads it.
    mov ah, 9 ; Sets the function code for printing a string.
    lea dx, a ; Loads the address of the prompt into DX.
    int 21h ; Calls the DOS interrupt to print the string.

    mov ah, 1 ; Sets the function code for reading a character.
    int 21h ; Calls the DOS interrupt to read a character.
    mov bl, al ; Stores the read character in BL.

    ; Prompts for the second number and reads it.
    mov ah, 9 ; Sets the function code for printing a string.
    lea dx, b ; Loads the address of the prompt into DX.
    int 21h ; Calls the DOS interrupt to print the string.

    mov ah, 1 ; Sets the function code for reading a character.
    int 21h ; Calls the DOS interrupt to read a character.
    mov bh, al ; Stores the read character in BH.

    ; Adds the two numbers and prints the result.
    mov ah, 9 ; Sets the function code for printing a string.
    lea dx, c ; Loads the address of the prompt into DX.
    int 21h ; Calls the DOS interrupt to print the string.

    add bl, bh ; Adds the two numbers in BL and BH.
    sub bl, 48 ; Converts the ASCII value of the result to its numeric value.
    mov ah, 2 ; Sets the function code for printing a character.
    mov dl, bl ; Loads the result into DL.
    int 21h ; Calls the DOS interrupt to print the result.

    ; Exits the program.
    mov ah, 4ch ; Sets the function code for terminating the program.
    int 21h ; Calls the DOS interrupt to terminate the program.
main endp ; Ends the main procedure.

end main ; Ends the main module.