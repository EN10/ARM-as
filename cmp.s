mov	r0, #1
mov	r1, #2
cmp	r0, r1

stop:	b stop

/*
R00=00000001 R01=00000002
N---
*/

mov	r0, #2
mov	r1, #1
cmp	r0, r1

stop:	b stop

/*
R00=00000002 R01=00000001
--C-
*/

mov	r0, #1
mov	r1, #1
cmp	r0, r1

stop:	b stop

/*
R00=00000001 R01=00000001
-ZC-
*/

mov	r0, #0
mov	r1, #1
cmp	r0, r1

stop:	b stop

/*
R00=00000000 R01=00000001
N---
*/

/*
4 left most bits of the PSR register are status flags NZCV  
Negative
Zero
Carry
oVerflow
*/