#include "grafo.h"

#include <stdlib.h>
#include <stdio.h>

Grafo* cria_grafo(int n) {
	Grafo* g = malloc(sizeof(Grafo));
	if (g == NULL) exit(1);

	g->n = n;

	// aloca matriz de adjacencia
	g->matriz = malloc(n * sizeof(*(g->matriz)));
	if (g->matriz == NULL) exit(1);

	for (int i = 0; i < n; i++) {
		g->matriz[i] = calloc(n, sizeof(*(g->matriz[i])));
		if (g->matriz[i] == NULL) exit(1);
	}

	return g;
}

void adiciona_aresta(Grafo* g, int a, int b) {
	// se ja existe nao faz nada
	if (g->matriz[a][b]) return;

	g->matriz[a][b] = 1;
	g->matriz[b][a] = 1;
}

void remove_aresta(Grafo* g, int a, int b) {
	// se nao existe nao faz nada
	if (!g->matriz[a][b]) return;

	g->matriz[a][b] = 0;
	g->matriz[b][a] = 0;
}

void imprime_grafo(Grafo* g) {
	for (int i = 0; i < g->n; i++) {
		for (int j = 0; j < g->n; j++) {
			printf("%d ", g->matriz[i][j]);	
		}
		printf("\n");
	}
	printf("\n");
}

void deleta_grafo(Grafo* g) {
	if (!g) return;
	
	// libera matriz de adjacencia
	for (int i = 0; i < g->n; i++) {
		free(g->matriz[i]);
	}
	
	free(g->matriz);
	free(g);
}