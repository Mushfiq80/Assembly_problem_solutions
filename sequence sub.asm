.model small
.Stack 100h
.Code
MAIN PROC
    MOV AX,0D
    
    MOV Cx,20D
    MOV BX,100D
    MOV ah,2
    
    
    
    TOP:
    ADD AX,BX
    SUB BX,5D
    LOOP TOP
    MAIN ENDP
END MAIN
    