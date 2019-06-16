#ifndef UTILS_H
#define UTILS_H

#include <stdlib.h>

// funcao para alocar matriz de (n x m) com elementos de sizeof == size
void** alloc_matrix(int n, int m, int size);

// libera os elementos da matrix (n x m)
void free_matrix(void** v, int n);

#endif