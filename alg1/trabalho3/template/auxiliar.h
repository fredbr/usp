#ifndef __AUXILIAR__
#define __AUXILIAR__

#include <time.h>

typedef unsigned char bool;

clock_t _ini, _fim;

int* le_inteiros(const char * arquivo, const int n);
void inicia_tempo();
double finaliza_tempo();

#endif