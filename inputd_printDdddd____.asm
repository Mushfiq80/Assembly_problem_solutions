.model small
.Stack 100h
.Code
MAIN PROC
    MOV AH,01
    Int 21h
    
    MOV BL,AL
    MOV AH, 02H
    MOV DL, 0AH
    INT 21h
    MOV DL,0DH
    INT 21h
    MOV DL,BL
    SUB DL,20H
    INT 21H
    MOV DL,BL
    MOV CX,49    
    
    
    TOP:
    INT 21h
    LOOP TOP
    MAIN ENDP
END MAIN
    