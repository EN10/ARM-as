mov     r0, #1
mov     r1, #0
sub     r2, r1, r0      @ SUB r0 from r1 and store in r2

stop:   b stop          @ Infinite loop to stop execution
 
/*
R00=00000001 R01=00000000 R02=ffffffff
*/