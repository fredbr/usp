#ifndef LINKED_LIST_H
#define LINKED_LIST_H

struct No {
	int val;
	struct No *prox;
};

typedef struct No Node;

typedef struct {
    struct No *head;
} LinkedList;

LinkedList *create_list();
void add_node(LinkedList*, int);
void remove_node(LinkedList *, int);
void print_list(LinkedList *);
void delete_list(LinkedList*);
int get_value(Node*);
Node *next_node(Node*);

#endif