#ARM Assembly#

Install (Only Once):    
-
Open Terminal:  
Click "+" -> New Teminal OR Alt + T     

    sudo apt install binutils-arm-none-eabi 
    sudo apt install qemu-system-arm    

Assemble:    
-
    arm-none-eabi-as add.s

Run:    
-
    qemu-system-arm -nographic -M sx1 -kernel a.out  
    
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

    arm-none-eabi-as -o add.o add.s
-o flag can be used to specify output name  

**AQA ARM**
http://filestore.aqa.org.uk/resources/computing/AQA-75162-75172-ALI.PDF 