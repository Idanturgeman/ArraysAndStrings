all: isort txtfind

isort: isortFile/main.o isortFile/insertion.o
	gcc isortFile/main.o isortFile/insertion.o -o isort

isortFile/main.o: isortFile/main.c isortFile/insertion.h
	gcc -Wall -c isortFile/main.c
	mv main.o isortFile/

isortFile/insertion.o: isortFile/insertion.c
	gcc -Wall -c isortFile/insertion.c
	mv insertion.o isortFile/

txtfind: txtfindFile/stringFunctions.o txtfindFile/main.o
	gcc txtfindFile/stringFunctions.o txtfindFile/main.o -o txtfind

txtfindFile/main.o: txtfindFile/main.c txtfindFile/stringFunctions.h
	gcc -Wall -c txtfindFile/main.c
	mv main.o txtfindFile/

txtfindFile/stringFunctions.o: txtfindFile/stringFunctions.c
	gcc -Wall -c txtfindFile/stringFunctions.c
	mv stringFunctions.o txtfindFile/

.PHONY: all clean

clean:
		rm -f isortFile/*.o txtfindFile/*.o isort txtfind