MOV R0, #5          @ Load register R0 with the value 5
MOV R1, #4          @ Load register R1 with the value 4
ADD R2, R1, R0      @ Add R0 and R1 and store in R2

HALT:   B HALT      @ Infinite loop to stop execution
 
/*
R00=00000005 R01=00000004 R02=00000009 R15=10010040
*/