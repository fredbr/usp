#ifndef SEARCH_H
#define SEARCH_H

#include <string.h>

#include "image.h"

// struct que representa na busca atual quantos elementos estao
// inclusos, qual o id do pixel e a soma dos valores dos pixels
// contidos
typedef struct {
    int cnt;
    int id;
    long long sum;
} Interval;

// matriz de valores visitados
// cada valor vai ser o id do intervalo contido
// 0 caso esteja em nenhum
typedef int** VisMatrix;

// busca em profundidade nos pixels da imagem
void dfs(VisMatrix vis, Interval *at, Image *img, int x, int y, int crit);

// torna (nx, xy) as coordenadas dos pixels adjacentes de acordo com p
// respeitando a ordem
void new_coordinates(int x, int y, int *nx, int *ny, int p);

// cria matriz de visitados, com todos elementos iguais a 0
VisMatrix construct_vismatrix(int n, int m);

// checa se o pixel com valor val pode entrar no intervalo novo
int is_valid_interval(Interval *at, int val, int crit);

// checa se coordenadas (x, y) estao dentro da matriz
int is_valid_coordinates(Image *img, int x, int y);

// checa se pixel eh borda
int is_corner(Image *img, VisMatrix vis, int x, int y);

#endif