#include "ponto.h"

#include <stdlib.h>
#include <math.h>

struct ponto_{
	float x;
	float y;
};

PONTO *ponto_criar(float x, float y) {
	PONTO *p = (PONTO*) malloc(sizeof(PONTO));
	p->x = x;
	p->y = y;
	return p;
}

void ponto_apagar(PONTO *p) {
	free(p);
}

bool ponto_set(PONTO *p, float x, float y) {
	p->x = x;
	p->y = y;
	return true;
}

// implementacao da funcao que calcula a distancia entre dois pontos
// para ser usada na funcao distancia

// obs: tive que colocar -lm no Makefile para compilar com math.h

float ponto_dist(PONTO *a, PONTO *b) {
	return sqrtf((a->x - b->x) * (a->x - b->x) +
		         (a->y - b->y) * (a->y - b->y));
}
