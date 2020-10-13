#ifndef HEADER_H
#define HEADER_H

#include <stdio.h>

#define HEADER_SIZE 128
#define HEADER_USED 17

// representacao intermediaria do cabecalho
struct Header {
    char status;
    int RNNproxRegistro;
    int numeroRegistrosInseridos;
    int numeroRegistrosRemovidos;
    int numeroRegistrosAtualizados;
};

// funcoes auxiliares para manipulacao do cabecalho
void read_header(FILE*, struct Header*);
void write_header(FILE*, struct Header*);
void print_header(FILE*, struct Header*);

#endif