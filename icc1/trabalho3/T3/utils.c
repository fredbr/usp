#include "utils.h"

void** alloc_matrix(int n, int m, int size) {
	// aloca vetor com os ponteiros
    void** v = malloc(n*sizeof(void*));

    for (int i = 0; i < n; i++) {
    	// aloca um vetor para cada ponteiro
        v[i] = malloc(m*size);
    }

    return v;
}

void free_matrix(void** v, int n) {
	// libera cada linha
	for (int i = 0; i < n; i++) {
		free(v[i]);
	}

	// libera a coluna
	free(v);
}
