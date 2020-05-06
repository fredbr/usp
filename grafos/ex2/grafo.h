#ifndef GRAFO_H
#define GRAFO_H

#include "linked_list.h"

typedef struct {
    int n;
    LinkedList **v;
} Graph;

Graph *create_graph(int);
void add_edge(Graph*, int, int);
void remove_edge(Graph*, int, int);
void print_graph(Graph*);
void delete_graph(Graph*);

#endif