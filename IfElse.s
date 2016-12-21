CMP R1, #10     @ if y = 10
BNE Else
MOV R2, #9      @ x = 9
B EndIf
Else:
ADD R1,R1, #1   @ y = y + 1
EndIf:

HALT:   B HALT
 
/*
If y = 10 Then
    x = 9
Else
    y = y +1
EndIf
*/