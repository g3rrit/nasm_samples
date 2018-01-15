
all:
	nasm -felf64 src/main.asm -o obj/main.o
	nasm -felf64 src/print.asm -o obj/print.o
	gcc obj/main.o obj/print.o -o build/programm
