#ifndef GRAFO_H
#define GRAFO_H

typedef struct {
    int n;
    int **matriz;
} Grafo;

Grafo* cria_grafo(int n);
void adiciona_aresta(Grafo* g, int a, int b);
void remove_aresta(Grafo* g, int a, int b);
void imprime_grafo(Grafo* g);
void deleta_grafo(Grafo* g);

#endif