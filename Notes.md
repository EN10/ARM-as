Source
-
@ is an arm as single line comment like ' in VB.NET     
/*  */ is used for multiline comments like in C

Source must end with newline otherwise:  
Assembler end of file Warning  

Infinite loop needed at the end otherwise:  
qemu: fatal: Trying to execute code outside RAM

Registers
-
R15 in ARM is the PC    
Each instruction is 32 bits wide or 4 Bytes     

By default the registers are little-endian (smallest on the right)  

R0-R12 are general purpose  
R13, R14, R15 & PSR are special purpose     
R13: Stack Pointer, R14: Link Register, R15: Program Counter    
PSR: Program Status Register    

4 left most bits of the PSR register are status flags NZCV  
* Negative
* Zero
* Carry
* oVerflow

Ref:    
https://www.ece.cmu.edu/~ee349/f-2012/lab2/qemu.pdf     
http://users.ece.utexas.edu/~valvano/EE345M/Arm_EE382N_4.pdf    