; Suppose the register ax = 5, bx =6, Swap the numbers of ax and
; bx so that ax gets 6 and bx gets 5. use the concept of Stack.
; Push and Pop instructions must use.

.Model small
.stack 100h
.Data
;msg1 dw "ODD",24h,0DH,0AH
;msg2 dw "EVEN",24h,0Dh,0AH
.Code
Main proc
     mov ax,5
     mov bx,6
     PUSH ax
     PUSH bx
     POP AX
     POP BX
     
     mov ah,2
     MOV DX,ax
     int 21h
     mov dx,bx
     int 21h
     MAIN ENDP
END MAIN