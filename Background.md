**QEMU has 2 modes:**

Full system emulation:   
`qemu-system-arm -M sx1 -kernel a.out -nographic -monitor stdio`    
This runs on baremetal like an arduino i.e. no OS
Used when building an OS.

User mode emulation:    
`qemu-arm -singlestep -g 1234 add &`    
Runs on top of an OS like other applications