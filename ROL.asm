.model small
.stack 100h
.Data
odd dw "ODD",24h,0Dh,0Ah
Even dw "EVEN",24h,0Dh,0Ah
.Code
main proc
    mov ah,1
    
    mov cx,16
    int 21h
    mov bx,ax
    XOR AX,AX
    
    TOP:
    ROL Bx,1
    JNC  NEXT
    INC AX
    NEXT:
    Loop TOP
    
    Main endp
    
END MAIN


     