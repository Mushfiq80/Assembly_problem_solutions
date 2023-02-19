.model small 
.stack 100h
.Data
msg dw ", ",24h
.Code
Main proc
    
    Mov ax,@data
    MOV DS,ax
    
    mov cx,1
    Mov ah,1
    Int 21h
    
    TOP:
    
    CMP CX,5
    
    JE MULT
    CMP AL,30h
    JL EXIT
    CMP AL,39h
    JG EXIT
    INC CX
    mov ah,09h
    LEA dx,msg
    mov bl,al
    SUB bl,30h
    PUSH BX
    MOV ah,1
    int 21h
    JMP TOP
    
    
    MULT:
    mov ax,1
     
    AGAIN:
    MOV BL,AL
    MUL AX
    
    POP AX
    
    Loop AGAIN
    
    Mov DX,AX
    add DX,30h
    ;mov ah
    MOV ah,2
    int 21h
    EXIT:
    endp MAIN
END MAIN

    