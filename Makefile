CC=gcc
CFLAGS=-I./headers -O3 -lm -Wall -g
DEPS = globals.h routines.h
OBJ = src/main.o src/routines.o src/globals.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

LB.x: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)