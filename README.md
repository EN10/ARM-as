#ARM Assembly#

Install (Only Once):    
-
Open Terminal:  
Click "+" -> New Teminal OR Alt + T     

    sudo apt install binutils-arm-none-eabi 
    sudo apt install qemu-user  
    sudo apt install gdb-arm-none-eabi

Assemble:    
-
    arm-none-eabi-as add.s -o add.o
    arm-none-eabi-ld add.o -o add

Run:    
-
    qemu-arm -singlestep -g 1234 add

GDB:
-
    arm-none-eabi-gdb
    file add
    target remote localhost:1234
    l
    info registers
    stepi
    
Notes on Source and Registers
-
https://github.com/EN10/arm-as/blob/master/Notes.md  

**AQA ARM:**     
http://filestore.aqa.org.uk/resources/computing/AQA-75162-75172-ALI.PDF 

Instructions Examples:  
*   ADD 
*   SUB
*   AND 
*   LSL
*   CMP