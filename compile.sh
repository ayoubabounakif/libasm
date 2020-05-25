gcc main.c *.o
./a.out | cat -e
rm -rf *.o ./a.out compile .Makefile.swp .compile.sh.swp
