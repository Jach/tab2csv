CC=g++
CFLAGS=-Wall -Wextra -ansi -pedantic -O3
OBJECTS=tab2csv.o
EXE=tab2csv
INSTALL=/usr/bin/install
INSTALLPATH=/usr/local/bin/

$(EXE) : $(OBJECTS)
	$(CC) -o tab2csv $(OBJECTS)

tab2csv.o : tab2csv.cpp
	$(CC) -c -o tab2csv.o $(CFLAGS) tab2csv.cpp

.PHONY: test

all : 
	$(MAKE) $(EXE)

rebuild : 
	$(MAKE) clean
	$(MAKE) all

install :
	$(INSTALL) $(EXE) $(INSTALLPATH)

clean :
	rm $(EXE) $(OBJECTS)

test : all
	./test/test.sh
