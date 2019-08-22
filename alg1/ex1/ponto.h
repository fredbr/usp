#ifndef PONTO_H

#define PONTO_H

#include <stdbool.h>

typedef struct ponto_ PONTO;

PONTO *ponto_criar(float x, float y);

void ponto_apagar(PONTO *p);

bool ponto_set(PONTO *p, float x, float y);

float ponto_dist(PONTO *a, PONTO *b);

#endif