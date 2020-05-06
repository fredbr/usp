#include "grafo.h"

#include <stdlib.h>
#include <stdio.h>

#include "linked_list.h"

Graph *create_graph(int n) {
	Graph *t = malloc(sizeof(Graph));
	t->n = n;
	t->v = malloc(sizeof(LinkedList) * n);

	for (int i = 0; i < n; i++) {
		t->v[i] = create_list();
	}
	return t;
}

void add_edge(Graph *g, int u, int v) {
	add_node(g->v[u], v);
	add_node(g->v[v], u);
}

void remove_edge(Graph *g, int u, int v) {
	remove_node(g->v[u], v);
	remove_node(g->v[v], u);
}

void print_graph(Graph *g) {
	for (int i = 0; i < g->n; i++) {
		printf("%d: ", i);
		print_list(g->v[i]);
		printf("\n");
	}
}

void delete_graph(Graph* g) {
	for (int i = 0; i < g->n; i++) {
		delete_list(g->v[i]);
	}
	free(g->v);
	free(g);
}