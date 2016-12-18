mov     r0, #4
lsl     r1, r0, #1     @ LSL r0 by #1 and store in r1

stop:   b stop
 
/*
R00=00000004 R01=00000008
*/