# ARM Assembly

Install (Only Once):    
-
Open Terminal:  
Click "+" -> New Teminal OR Alt + T     

    sudo apt update
    sudo apt install binutils-arm-none-eabi 
    sudo apt install qemu-system-arm    
Assembler & Runtime
Assemble:    
-
    arm-none-eabi-as ADD.s
Run:
-

    qemu-system-arm -M sx1 -kernel a.out -nographic -monitor stdio  
    
View all Registers:

    info registers	

Examine 4 RAM Address from:

    x /4i  0x10010034
    
https://en.wikipedia.org/wiki/ARM_architecture#Registers    
https://developer.arm.com/docs/100166_0001/latest/programmers-model/processor-core-register-summary     
https://developer.arm.com/docs/dui0801/latest/overview-of-aarch32-state/registers-in-aarch32-state	
	
For detailed debugging see GDB:     
https://github.com/EN10/arm-as/blob/master/GDB.md   

Notes on Source
-
@ is an arm single line comment like ' in VB.NET     
/*  */ is used for multiline comments like in C

Source must end with newline otherwise:  
Assembler end of file Warning  

Infinite loop needed at the end otherwise:  
qemu: fatal: Trying to execute code outside RAM

-o flag can be used to specify output name  

    arm-none-eabi-as -o ADD.o ADD.s

**AQA ARM:**     
http://filestore.aqa.org.uk/resources/computing/AQA-75162-75172-ALI.PDF 

Instructions Examples:  
*   ADD 
*   SUB
*   AND 
*   LSL
*   CMP
*   IfElse
