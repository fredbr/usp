SRCS=grafo.c linked_list.c main.c
OBJS=$(subst .c,.o, $(SRCS))

CFLAGS=-Wall -Wextra -std=c99 -O2 -Wno-unused-result

all: $(OBJS)
	gcc -o main $(OBJS) $(CFLAGS)

.c.o:
	gcc -c $< -o $@ $(CFLAGS)

clean:
	rm *.o

zip: clean
	zip sol.zip *.c *.h Makefile

run:
	./main