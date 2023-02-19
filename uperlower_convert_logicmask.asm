.MODEL small
.stack 100h
.data

msg dw "Not a Alphabet$", 24h

.CODE
MAIN PROC
    
    MOV ah,1
    int 21h
    
    CMP al,"A"
    JL  Exit
    
    CMP al,"Z"
    JG  again
    
    JMP Print
    
    again:
        CMP al,"a"
        JL Exit
    
        CMP al,"z"
        JG Exit
        
     Print:
     XOR al,20h
     mov ah,2
     mov dl,al
     int 21h
     JMP die
     
     
     Exit:
     MOV AX,@data
     mov DS,AX
     
     LEA DX,msg
     MOV ah,09h
     int 21h
     
     Die:
     
     MAIN ENDP
END MAIN
    
    
     
    