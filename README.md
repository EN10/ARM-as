#ARM Assembly#

Install (Only Once): 
-
Open Terminal:  
Click "+" -> New Teminal OR Alt + T     

    sudo apt install qemu-system-arm    
    sudo apt install binutils-arm-none-eabi 

Assemble:    
-
    arm-none-eabi-as -o add.o add.s

Run:    
-
    qemu-system-arm -nographic -M sx1 -kernel add.o  
    
Monitor:
-
ctrl-a c (ctrl and 'a' then 'c')    
'info registers'