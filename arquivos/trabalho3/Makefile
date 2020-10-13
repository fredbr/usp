SRCS=header.c main.c register.c aux.c csv_parser.c btree.c
OBJS=$(subst .c,.o, $(SRCS))

CFLAGS=-Wall -Wextra -std=c99 -O2 -Wno-unused-result

ifeq ($(DEBUG), 1)
	CFLAGS = -Wall -Wextra -std=c99 -g
endif

all: $(OBJS)
	gcc -o main $(OBJS) $(CFLAGS)

.c.o:
	gcc -c $< -o $@ $(CFLAGS)

clean:
	rm -f *.o

zip: clean
	zip sol.zip *.c *.h Makefile

run:
	./main