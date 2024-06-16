CC=gcc
INC=-I. -I./headers -I/usr/include/hdf5/serial
LIB=-L/usr/lib/x86_64-linux-gnu -L/usr/lib/x86_64-linux-gnu/hdf5/serial -lhdf5 -lhdf5_hl -lm
CFLAGS= $(INC) $(LIB) -O3
DEPS = globals.h routines.h h5.h
OBJ = src/main.o src/routines.o src/globals.o src/h5.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

LB.x: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	rm *.x src/*.o *.h5
