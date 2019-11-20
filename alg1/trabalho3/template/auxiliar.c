#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "auxiliar.h"

int* le_inteiros(const char * arquivo, const int n)
{
    FILE* f = fopen(arquivo, "r");
    int * inteiros = (int *) malloc(sizeof(int) * n);
    for (int i = 0; !feof(f); i++)
        fscanf(f, "%d\n", &inteiros[i]);
    fclose(f);
    return inteiros;
}

void inicia_tempo()
{
    srand(time(NULL));
    _ini = clock();
}

double finaliza_tempo()
{
    _fim = clock();
    return ((double) (_fim - _ini)) / CLOCKS_PER_SEC;
}