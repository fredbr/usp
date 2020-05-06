#ifndef HEADER_H
#define HEADER_H

#include <stdio.h>

#define HEADER_SIZE 128
#define HEADER_USED 17

struct Header {
    char status;
    int RNNproxRegistro;
    int numeroRegistrosInseridos;
    int numeroRegistrosRemovidos;
    int numeroRegistrosAtualizados;
};

void read_header(FILE*, struct Header*);
void write_header(FILE*, struct Header*);

#endif