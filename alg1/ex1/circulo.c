#include "circulo.h"

#include <stdlib.h>

#define PI 3.14159

struct circulo_{
	PONTO *ponto_c;
	float raio;
};

// cria um circulo com centro em (x, y) e raio (raio)
CIRCULO *circulo_criar(float x, float y, float raio) {
	CIRCULO *p = (CIRCULO*) malloc(sizeof(CIRCULO));

	p->ponto_c = ponto_criar(x, y);
	p->raio = raio;

	return p;
}

// apaga o circulo e o ponto correspondente
void circulo_apagar(CIRCULO *circulo) {
	ponto_apagar(circulo->ponto_c);
	free(circulo);
}

// retorna PI*r^2 (area do circulo)

float circulo_area(CIRCULO *circulo) {
	return PI*circulo->raio*circulo->raio;
}

// implementado em circulo.c por se tratar de um circulo
// algo que requer tanto um ponto como um circulo para estar definido

// retorna distancia entre o centro do circulo o um ponto

float distancia(PONTO *p, CIRCULO *r) {
	return ponto_dist(p, r->ponto_c);
}