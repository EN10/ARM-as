#Using GDB with QEMU#

Install (Only Once):    
-
Open Terminal:  
Click "+" -> New Teminal OR Alt + T     

    sudo apt install gdb-multiarch 

Run Binary:    
-
    qemu-system-arm -nographic -M sx1 -kernel a.out -s -S

-s              shorthand for -gdb tcp::1234    
-S              freeze CPU at startup (use 'c' to start execution)

Edit Registers:    
-
    gdb-multiarch

    set architecture arm

    target remote localhost:1234

    set $pc = 0x10010034

    stepi

In QEMU Monitor:    

    info registers


Notes:    
-
R15 in ARM is the PC    
add.s example PC ends on 0x10010040  
Each instruction is 32 bits wide or 4 Bytes 
There are 3 instructions on width 4 (bytes)     
Therefore program begins on 0x10010034      
0x10010040 - 12 (3 lines x 4 bytes) = 0x10010034   

By default the registers are little-endian (smallest on the right)  

4 left most bits of the PSR register are status flags NZCV  
* Negative
* Zero
* Carry
* oVerflow

R0-R12 are general purpose  
R13, R14, R15 & PSR are special purpose     
R13: Stack Pointer, R14: Link Register, R15: Program Counter    
PSR: Program Status Register    

Ref:    
https://www.ece.cmu.edu/~ee349/f-2012/lab2/qemu.pdf 

-M sx1  http://wiki.qemu.org/Documentation/Platforms/ARM 