all: isort txtfind

isort: main.o insertion.o
	gcc main.o insertion.o -o isort

main.o: main.c insertion.h
	gcc -Wall -c main.c

insertion.o: insertion.c
	gcc -Wall -c insertion.c

txtfind: stringFunctions.o maintf.o
	gcc stringFunctions.o maintf.o -o txtfind

main.o: maintf.c stringFunctions.h
	gcc -Wall -c maintf.c

stringFunctions.o: stringFunctions.c
	gcc -Wall -c stringFunctions.c

.PHONY: all clean

clean:
		rm -f *.o *.o isort txtfind
