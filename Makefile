
all:
	nasm -felf64 src/cores/main.asm -o obj/main.o
	nasm -felf64 src/util/print.asm -o obj/print.o
	gcc obj/main.o obj/print.o -o build/programm

mac:
	nasm --prefix _ -fmacho64 src/cores/main.asm -o obj/main.o
	nasm --prefix _ -fmacho64 src/util/print.asm -o obj/print.o
	#gcc -Wl,-no_pie obj/main.o obj/print.o -o build/programm
	gcc -m64 -mmacosx-version-min=10.5 -isysroot /Developer/SDKs/MacOSX.sdk -o build/programm obj/main.o obj/print.o


