#ifndef LINKED_LIST_H
#define LINKED_LIST_H

typedef struct {
    struct No *head;
} LinkedList;

LinkedList *create_list();
void add_node(LinkedList*, int);
void remove_node(LinkedList *, int);
void print_list(LinkedList *);
void delete_list(LinkedList*);

#endif