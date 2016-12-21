CMP R1, #10
BNE Else
MOV R2, #9
B EndIf
Else:
ADD R1,R1, #1
EndIf:

HALT:   B HALT
 