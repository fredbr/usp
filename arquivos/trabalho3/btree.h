#ifndef BTREE_H
#define BTREE_H

#include <stdio.h>

#define BTREE_OFFSET 72
#define BTREE_HEADER_OFFSET 17

#define M 6

typedef struct HeaderBTree {
    char status;
    int noRaiz;
    int nroNiveis;
    int proxRNN;
    int nroChaves;
} HeaderBTree;

typedef struct InfoBTree {
    int C; // key
    int Pr; // pointer
} InfoBTree;

/** Struct for the information of each node of b-tree */
typedef struct DataBTree {
    int nivel;
    int n; 

    InfoBTree child[M - 1];
    int P[M];
} DataBTree;

// writes the header of the b-tree
void btree_writeHeader(FILE* f, HeaderBTree* ht);

// reads the header of the b-tree
HeaderBTree btree_loadHeader(FILE* f);

// inserts a new register 
void btree_insertRegister(FILE* f, int key, int offset, HeaderBTree *h);

// finds register (-1 if not found)
int btree_findRegister(FILE* f, HeaderBTree *ht, int key, int* cnt);

#endif