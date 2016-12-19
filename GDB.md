#Using GDB with QEMU#

    qemu-system-arm -nographic -M sx1 -kernel a.out -s

-s              shorthand for -gdb tcp::1234

    gdb-multiarch

    set architecture arm

    target remote localhost:1234

    info registers 

Ref:    
https://www.ece.cmu.edu/~ee349/f-2012/lab2/qemu.pdf 

-M sx1  http://wiki.qemu.org/Documentation/Platforms/ARM 