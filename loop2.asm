.model small
.Stack 100h
.Code
MAIN PROC
    MOV DX,0h
    
    MOV Cx,255
    MOV ah,2
    
    
    TOP:
    INT 21H
    INC Dx
    LOOP TOP
    MAIN ENDP
END MAIN
    