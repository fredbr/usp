#ifndef CSV_PARSER_H
#define CSV_PARSER_H

#include <stdio.h>

#include "register.h"

// funcoes auxiliares para a leitura do aqruivo csv
void ignore_line(FILE*);
int next_register(FILE*, struct Register*);

#endif