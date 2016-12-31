# i386-maximum
A program written in i386 NASM assembly code that exits with a return code equal to the highest number in the embedded list of numbers.

# Compiling and running
This program is to be compiled using NASM and LD on an i386 or x86_64 Linux installation.
To compile under a x86_64 Linux installation:

    nasm -f elf maximum.asm
    ld -m elf_i386 maximum.o -o maximum

To run after compiling:

    ./maximum

To check the output:

    echo $?
