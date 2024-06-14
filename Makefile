CC=gcc
INC=-I. -I./headers -I/usr/include/hdf5/serial
LIB=-L
CFLAGS= $(INC) $(LIB) -O3 -lm -Wall
DEPS = globals.h routines.h h5.h
OBJ = src/main.o src/routines.o src/globals.o src/h5.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

LB.x: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)