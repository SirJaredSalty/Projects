FILE  = main
FILE2 =	randomNum
FILE3 =	compEasy
FILE4 = compHard
FILE5 = checkWinner
FILE6 =	blockMove
FILE7 = drawBoard

all: $(FILE).asm $(FILE2).asm $(FILE3).asm $(FILE4).asm $(FILE5).asm $(FILE6).asm $(FILE7).c
	nasm -f elf64 -l $(FILE).lst $(FILE).asm
	nasm -f elf64 -l $(FILE2).lst $(FILE2).asm
	nasm -f elf64 -l $(FILE3).lst $(FILE3).asm
	nasm -f elf64 -l $(FILE4).lst $(FILE4).asm
	nasm -f elf64 -l $(FILE5).lst $(FILE5).asm
	nasm -f elf64 -l $(FILE6).lst $(FILE6).asm
	gcc -c  $(FILE7).c -o $(FILE7).o
	gcc -m64 -o $(FILE) $(FILE2).o $(FILE3).o $(FILE4).o $(FILE5).o $(FILE6).o $(FILE7).o $(FILE).o

run: $(FILE)
	./$(FILE)

clean:
	rm *.o  *.lst

