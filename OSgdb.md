#Using GDB with QEMU System ARM#

Install (Only Once):    
-
Open Terminal:  
Click "+" -> New Teminal OR Alt + T     

    sudo apt install gdb-multiarch 

Run Binary:    
-
    qemu-system-arm -M sx1 -S -kernel a.out -s -nographic -monitor stdio  
    info registers  
-M sx1          http://wiki.qemu.org/Documentation/Platforms/ARM    
-S              freeze CPU at startup (use 'c' to start execution)  
-s              shorthand for -gdb tcp::1234  
-nographic      disable graphical output and redirect serial I/Os to console    
-monitor stdio  redirect the monitor to stdio

Edit Registers:    
-
    gdb-multiarch
    set architecture arm
    target remote localhost:1234
    set $pc = 0x10010034
    stepi