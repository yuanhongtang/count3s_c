# Name: David Tang
# Course: CIS145 Introduction to DevOps
# CRN: 45595
# Date: 2/1/2019
# Assignment: Makefile - Exercise


runCount3s: Count3s
	./Count3s

Count3s: countThrees.o readInt32BitLE.o
	g++ -o Count3s countThrees.o readInt32BitLE.o

countThrees.o: readInt32BitLE.h
	g++ -c countThrees.c readInt32BitLE.h


readInt32BitLE.o: readInt32BitLE.c
	g++ -c readInt32BitLE.c


.PHONY: clean
clean:
	rm -rf *.o *.gch Count3s bin/
