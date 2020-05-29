#ifndef REGISTER_H
#define REGISTER_H

#include <stdio.h>

// tamanho em bytes dos registros
#define REGISTER_SIZE 128
#define REGISTER_FIXED_OFFSET 105
#define REGISTER_VARIABLE_SIZE 8

// struct para a representacao intermediaria dos dados
struct Register {
    int cidadeMaeSize;
    int cidadeBebeSize;
    char *cidadeMae;
    char *cidadeBebe;
    int idNascimento;
    int idadeMae;
    char dataNascimento[10];
    char sexoBebe[1];
    char estadoMae[2];
    char estadoBebe[2];
};

// funcoes para facilitar o trabalho com registros
struct Register* make_register();
void delete_register(struct Register*);
int read_register(FILE*, int, struct Register*);
void write_register(FILE*, int, struct Register*);
void print_register(FILE *f, struct Register*);

#endif