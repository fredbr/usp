#ifndef CIRCULO_H

#define CIRCULO_H

#include "ponto.h"

typedef struct circulo_ CIRCULO;

CIRCULO *circulo_criar(float c, float y, float raio);

void circulo_apagar(CIRCULO *circulo);

float circulo_area(CIRCULO *circulo);

// implementado em circulo.c por se tratar de um circulo
// algo que requer tanto um ponto como um circulo para estar definido

float distancia(PONTO *p, CIRCULO *r);

#endif