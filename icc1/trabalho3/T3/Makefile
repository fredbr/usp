CC ?= gcc
CFLAGS ?= -I. -Wall -Wextra -std=c99 -Wno-unused-result
OPTFLAGS ?= -O2
DEPS = image.h utils.h search.h
OBJ = image.o main.o utils.o search.o
EXEC = main

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) $(OPTFLAGS)

all: $(OBJ)
	$(CC) -o $(EXEC) $^ $(CFLAGS) $(OPTFLAGS)

clean:
	rm $(OBJ) -f

run:
	./$(EXEC)