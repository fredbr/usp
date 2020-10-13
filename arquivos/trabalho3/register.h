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
struct Register* make_register(void);
struct Register* make_register_from_input(int);
struct Register* make_register_from_full_input(void);
void delete_register(struct Register*);
int read_register(FILE*, int, struct Register*);
void write_register(FILE*, int, struct Register*);
void write_register_with_trash(FILE*, int, struct Register*);
void update_register_from_input(struct Register*, int);
void mark_register(FILE*, int);
void print_register(FILE *, struct Register*);
int valid_register(struct Register*, struct Register*);

#endif