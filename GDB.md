#Using GDB with QEMU#

    qemu-system-arm -nographic -M sx1 -kernel a.out -s -S

-s              shorthand for -gdb tcp::1234    
-S              freeze CPU at startup (use 'c' to start execution)

    gdb-multiarch

    set architecture arm

    target remote localhost:1234

    set $pc = set $pc = 0x10010034

    stepi

In QEMU Monitor:    

    info registers

**NOTES:**
R15 in ARM is the PC    
add.s example PC ends on 0x10010040     
There are 3 instructions on width 4 (bytes)     
Therefore program begins on 0x10010034      
0x10010040 - 12 (3 lines x 4 bytes) = 0x10010034    

Ref:    
https://www.ece.cmu.edu/~ee349/f-2012/lab2/qemu.pdf 

-M sx1  http://wiki.qemu.org/Documentation/Platforms/ARM 