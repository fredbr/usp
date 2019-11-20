#include <stdio.h>
#include "auxiliar.h"
#include "colecao.h"

int main(int argc, char const *argv[])
{
    // tempos
    double tempo_leitura;

    double tempo_insere_ordenado;
    double tempo_insere_ultimo;
    double tempo_insere_primeiro;
    double tempo_insere_binaria;
    double tempo_insere_avl;

    double tempo_busca_ordenado;
    double tempo_busca_ultimo;
    double tempo_busca_primeiro;
    double tempo_busca_binaria;
    double tempo_busca_avl;

    // encontrados
    int encontrado_ordenado = 0;
    int encontrado_ultimo   = 0;
    int encontrado_primeiro = 0;
    int encontrado_binaria  = 0;
    int encontrado_avl      = 0;

    // colecoes
    Colecao* c_ordenado;
    Colecao* c_ultimo;
    Colecao* c_primeiro;
    Colecao* c_binaria;
    Colecao* c_avl;

    // le os valores de entrada
    const int N = 50000;

    inicia_tempo();
    int* insercao = le_inteiros("insercao.txt", N);
    int* busca = le_inteiros("busca.txt", N);
    tempo_leitura = finaliza_tempo();

    // insere os valores nas 5 estruturas
    inicia_tempo();
    c_ordenado = cria_colecao(LISTA_ORDENADO);
    for (int i = 0; i < N; i++)
        adiciona(c_ordenado, insercao[i]);
    tempo_insere_ordenado = finaliza_tempo();


    inicia_tempo();
    c_ultimo  = cria_colecao(LISTA_ULTIMO);
    for (int i = 0; i < N; i++)
        adiciona(c_ultimo, insercao[i]);
    tempo_insere_ultimo = finaliza_tempo();
    
    inicia_tempo();
    c_primeiro = cria_colecao(LISTA_PRIMEIRO);
    for (int i = 0; i < N; i++)
        adiciona(c_primeiro, insercao[i]);
    tempo_insere_primeiro = finaliza_tempo();

    inicia_tempo();
    c_binaria  = cria_colecao(ARVORE_BINARIA);
    for (int i = 0; i < N; i++)
        adiciona(c_binaria, insercao[i]);
    tempo_insere_binaria = finaliza_tempo();
    
    inicia_tempo();
    c_avl = cria_colecao(ARVORE_AVL);
    for (int i = 0; i < N; i++)
        adiciona(c_avl, insercao[i]);
    tempo_insere_avl = finaliza_tempo();


    // busca os valores nas 5 estruturas
    inicia_tempo();
    for (int i = 0; i < N; i++)
        encontrado_ordenado += existe(c_ordenado, busca[i]);
    tempo_busca_ordenado = finaliza_tempo();
    
    inicia_tempo();
    for (int i = 0; i < N; i++)
        encontrado_ultimo += existe(c_ultimo, busca[i]);
    tempo_busca_ultimo = finaliza_tempo();
    
    inicia_tempo();
    for (int i = 0; i < N; i++)
        encontrado_primeiro += existe(c_primeiro, busca[i]);
    tempo_busca_primeiro = finaliza_tempo();

    inicia_tempo();
    for (int i = 0; i < N; i++)
        encontrado_binaria += existe(c_binaria, busca[i]);
    tempo_busca_binaria = finaliza_tempo();
    
    inicia_tempo();
    for (int i = 0; i < N; i++)
        encontrado_avl += existe(c_avl, busca[i]);
    tempo_busca_avl = finaliza_tempo();

    destroi(c_ordenado);
    destroi(c_ultimo);
    destroi(c_primeiro);
    destroi(c_binaria);
    destroi(c_avl);

    printf("\nTempo de Inserção\n");
    printf("LISTA_ORDENADO\t%f\n", tempo_insere_ordenado);
    printf("LISTA_ULTIMO  \t%f\n", tempo_insere_ultimo);
    printf("LISTA_PRIMEIRO\t%f\n", tempo_insere_primeiro);
    printf("ARVORE_BINARIA\t%f\n", tempo_insere_binaria);
    printf("ARVORE_AVL    \t%f\n", tempo_insere_avl);


    printf("\nTempo de Busca\n");
    printf("LISTA_ORDENADO\t%f\t%d\n", tempo_busca_ordenado, encontrado_ordenado);
    printf("LISTA_ULTIMO  \t%f\t%d\n", tempo_busca_ultimo,   encontrado_ultimo);
    printf("LISTA_PRIMEIRO\t%f\t%d\n", tempo_busca_primeiro, encontrado_primeiro);
    printf("ARVORE_BINARIA\t%f\t%d\n", tempo_busca_binaria,  encontrado_binaria);
    printf("ARVORE_AVL    \t%f\t%d\n", tempo_busca_avl,      encontrado_avl);

    return 0;
}
