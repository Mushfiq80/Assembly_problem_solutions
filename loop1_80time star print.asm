.model small
.Stack 100h
.Code
MAIN PROC
    MOV Cx,80
    MOV ah,2
    MOV DL,'*'
    
    TOP:
    INT 21H
    LOOP TOP
    MAIN ENDP
END MAIN

    