mov     r0, #5
mov     r1, #3
and     r2, r1, r0     @ AND r0 and r1 and store in r2

stop:   b stop
 
/*
R00=00000005 R01=00000003 R02=00000001
*/