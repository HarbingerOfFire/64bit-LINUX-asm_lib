#!/bin/bash

#use to assemble and run the files
nasm -f elf64 $1.asm -o $1.o
ld $1.o -o $1
rm $1.o
./$1
