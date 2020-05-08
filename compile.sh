nasm -f elf64 -o $1.o $1.s
gcc main.c $1.o
rm -rf $1
./a.out | cat -e
rm -rf $1.o
rm -rf ./a.out
