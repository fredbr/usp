#ifndef IMAGE_H
#define IMAGE_H

#include <stdlib.h>
#include <stdio.h>

// define um pixel como um unsigned char
typedef unsigned char Pixel;
    
// define uma imagem com dimensoes (n x m) e pixeis na matrix v
typedef struct {
    int n, m;
    Pixel **v;
} Image;

// funcao para ler um arquivo pgm e retornar uma imagem processada
Image* read_pgm(FILE *in);

// funcao para ler os pixels de uma imagem
void read_pixels(FILE *in, Pixel **v, int n, int m);

#endif