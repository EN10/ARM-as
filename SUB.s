MOV R0, #1
MOV R1, #0
SUB R2, R1, r0      @ SUB r0 from r1 and store in r2

HALT:   B HALT          @ Infinite loop to stop execution
 
/*
R00=00000001 R01=00000000 R02=ffffffff
*/
