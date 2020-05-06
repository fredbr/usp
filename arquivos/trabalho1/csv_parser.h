#ifndef CSV_PARSER_H
#define CSV_PARSER_H

#include <stdio.h>

#include "register.h"

void ignore_line(FILE*);
int next_register(FILE*, struct Register*);

#endif