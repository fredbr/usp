all: main.o auxiliar.o colecao.o
	gcc main.o auxiliar.o colecao.o -o programa
main.o: main.c
	gcc main.c -c
auxiliar.o: auxiliar.c
	gcc auxiliar.c -c
colecao.o: colecao.c
	gcc colecao.c -c
run:
	./programa
clean:
	rm -rf programa *.o