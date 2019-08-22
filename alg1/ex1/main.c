#include <stdio.h>

#include "ponto.h"
#include "circulo.h"

int main() {
	float ponto_x, ponto_y;
	float circulo_x, circulo_y, circulo_r;

	scanf("%f %f", &ponto_x, &ponto_y);
	scanf("%f %f %f", &circulo_x, &circulo_y, &circulo_r);

	PONTO *p = ponto_criar(ponto_x, ponto_y);
	CIRCULO *r = circulo_criar(circulo_x, circulo_y, circulo_r);

	// implementado em circulo.c
	// ver comentaio no arquivo
	float dist = distancia(p, r);

	if (dist < circulo_r)
		printf("O ponto é interior à circunferência.\n");
	else if (dist > circulo_r)
		printf("O ponto é exterior à circunferência.\n");
	else
		printf("O ponto pertence à circunferência.\n");

	printf("Distância: %.2f\n", dist);

	ponto_apagar(p);
	circulo_apagar(r);

	return 0;
}