all: isort txtfind

isort: isortFile/main.o isortFile/insertion.o
	gcc isortFile/main.o isortFile/insertion.o -o isort

isortFile/main.o: isortFile/main.c isortFile/insertion.h
	gcc -Wall -c isortFile/main.c
	mv main.o isortFile/

isortFile/insertion.o: isortFile/insertion.c
	gcc -Wall -c isortFile/insertion.c
	mv insertion.o isortFile/

txtfind: txtfindFile/stringFunctions.o txtfindFile/maintf.o
	gcc txtfindFile/stringFunctions.o txtfindFile/maintf.o -o txtfind

txtfindFile/main.o: txtfindFile/maintf.c txtfindFile/stringFunctions.h
	gcc -Wall -c txtfindFile/maintf.c
	mv maintf.o txtfindFile/

txtfindFile/stringFunctions.o: txtfindFile/stringFunctions.c
	gcc -Wall -c txtfindFile/stringFunctions.c
	mv stringFunctions.o txtfindFile/

.PHONY: all clean

clean:
		rm -f isortFile/*.o txtfindFile/*.o isort txtfind
