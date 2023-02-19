.model small
.Stack 100h
.Code
MAIN PROC
    MOV DX,1
    
    MOV Cx,49D
   
    MOV ah,2
    
    
    
    TOP:
    ADD dx,4
    LOOP TOP
    MAIN ENDP
END MAIN
    