# Using GDB with QEMU

Install (Only Once):    
-
Open Terminal:  
Click "+" -> New Teminal OR Alt + T     

    sudo apt remove gdb gdbserver
    sudo apt install gdb-arm-none-eabi
    
On GDB 8.1:

    sudo apt install gdb-multiarch
    
Debuggers:	
-

gdb - uses i386 registers       
gdb-multiarch - arch must be initialised each time	

Run Binary:    
-

    qemu-system-arm -M sx1 -S -kernel a.out -s -nographic -monitor stdio
    
-M sx1          http://wiki.qemu.org/Documentation/Platforms/ARM    
-S              freeze CPU at startup (use 'c' to start execution)  
-s              shorthand for -gdb tcp::1234  
-nographic      disable graphical output and redirect serial I/Os to console    
-monitor stdio  redirect the monitor to stdio   

Inspect Registers:  

    info registers  


Edit Registers:    
-
Run `qemu-system-arm` in a seprate window:     
Run GDB:    

    arm-none-eabi-gdb
Connect to running code:    

    target remote localhost:1234
Set PC to beginning of ADD.s

    set $pc = 0x10010034

Inspect Registers   

    info registers

View RAM
    
    x/4i $pc

x/4i $pc
Examine 4 Instructions from current PC + 12 (Bytes) i.e. 3 instructions    
PC ends on 0x10010040 Therefore program begins on 0x10010034      
0x10010040 - 12 (3 lines x 4 bytes) = 0x10010034    
`x/4i $pc - 12` to see RAM at the end.

View instructions in HEX:

    x/4w $pc

Step through code:

    stepi

Print Register:

    p $r0

Print Register 0

Notes:    
-
R15 in ARM is the PC    
add.s example PC ends on 0x10010040  
Each instruction is 32 bits wide or 4 Bytes     
There are 3 instructions of width 4 (bytes)     

If -S then PC is 0x10000000

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
