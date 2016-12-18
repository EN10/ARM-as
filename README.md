#ARM Assembly#

Install (Only Once):    
-
Open Terminal:  
Click "+" -> New Teminal OR Alt + T     

    sudo apt install binutils-arm-none-eabi 
    sudo apt install qemu-system-arm    

Assemble:    
-
    arm-none-eabi-as -o add.o add.s

Run:    
-
    qemu-system-arm -nographic -M sx1 -kernel add.o  
    
Monitor:
-
ctrl-a c (ctrl and 'a' then 'c')    

    info registers
    
Notes on Source
-
@ is an arm as comment like ' in VB.NET 

Source must end with newline otherwise:  
Assembler end of file Warning  

Infinite loop needed at the end otherwise:  
qemu: fatal: Trying to execute code outside RAM