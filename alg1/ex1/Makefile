all: main.o ponto.o circulo.o
	gcc main.o ponto.o circulo.o -o programa -lm
main.o: main.c
	gcc main.c -c
ponto.o: ponto.c
	gcc ponto.c -c
run:
	./programa
clean:
	rm -rf programa *.o