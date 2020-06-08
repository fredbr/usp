#include "linked_list.h"

#include <stdlib.h>
#include <stdio.h>

LinkedList *create_list() {
	return calloc(sizeof(LinkedList), 1);
}

void add_node_aux(Node **t, int val) {
	if (*t == NULL) {
		*t = malloc(sizeof(Node));
		(*t)->val = val;
		(*t)->prox = NULL;
	}
	else if ((*t)->val == val) {
		return;
	}
	else {
		add_node_aux(&(*t)->prox, val);
	}
}

void add_node(LinkedList *t, int val) {
	add_node_aux(&(t->head), val);
}

void remove_node_aux(Node **t, int val) {
	if (*t == NULL) {
		return;
	}
	else if ((*t)->val == val) {
		Node *tmp = *t;
		*t = (*t)->prox;
		free(tmp);
	}
	else remove_node_aux(&(*t)->prox, val);
}

void remove_node(LinkedList *t, int val) {
	remove_node_aux(&(t->head), val);
}

void print_list(LinkedList *t) {
	Node *aux = t->head;
	while (aux != NULL) {
		printf("%d ", aux->val);
		aux = aux->prox;
	}
}

void delete_list_aux(Node *t) {
	if (t == NULL) {
		return;
	}
	else {
		delete_list_aux(t->prox);
		free(t);
	}
}

void delete_list(LinkedList *t) {
	delete_list_aux(t->head);
}

int get_value(Node *t) {
	return t->val;
}

Node *next_node(Node *t) {
	return t->prox;
}