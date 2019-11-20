#include <stdlib.h>
#include "colecao.h"

struct _no {
    int valor;
    struct _no* esq;
    struct _no* dir;
    int altura; // Usado somente na AVL
} ;

struct _c {
    No* inicio;
    int estrutura_id;
};

// cria uma colecao vazia
Colecao* cria_colecao(int estrutura_id) {   
    Colecao *t = malloc(sizeof(Colecao));
    
    if (t == NULL) exit(1);

    t->estrutura_id = estrutura_id;
    t->inicio = NULL;

    return t;
}

// cria um no vazio com o valor valor
No* cria_no(int valor)
{
    No *t = malloc(sizeof(No));

    if (t == NULL) exit(1);

    t->valor = valor;
    t->esq = t->dir = NULL;
    t->altura = 1;

    return t;
}

// procura o primeiro elemento maior que v->valor
// e insere antes dele
// retorna nova raiz
No* adiciona_lista_ordenado(No *raiz, No *v) {
    if (raiz == NULL || v->valor < raiz->valor) {
        v->dir = raiz;
        if (raiz != NULL) raiz->esq = v;
        return v;
    }

    No *t = raiz;

    while (raiz->dir != NULL &&
           raiz->dir->valor < v->valor) raiz = raiz->dir;

    No *l = raiz, *r = raiz->dir;

    v->esq = l;
    v->dir = r;
    
    l->dir = v;

    if (r != NULL) r->esq = v;

    return t;
}

// atravessa a lista inteira e adiciona o novo np no final
// retorna nova raiz
No* adiciona_lista_ultimo(No *t, No *v) {
    if (t == NULL) {
        // nada a fazer, retorna v
        return v;
    }
    else {
        No *tmp = t;

        // atravessa ate o final da lista
        while (t->dir != NULL) t = t->dir;

        t->dir = v;
        v->esq = t;

        // retorna no inicial
        return tmp;
    }
}

// adiciona no antes de t
// retorna nova raiz
No* adiciona_lista_primeiro(No *t, No *v) {
    v->dir = t;

    if (t != NULL) t->esq = v;
    
    // retorna v
    return v;
}

No* adiciona_arvore_binaria(No *t, No *v) {
    // caso base
    if (t == NULL) {
        return v;
    }
    // adiciona na subarvore direita
    else if (t->valor < v->valor) {
        t->dir = adiciona_arvore_binaria(t->dir, v);
    }
    // adiciona na subarvore esquerda
    else if (t->valor > v->valor) {
        t->esq = adiciona_arvore_binaria(t->esq, v);
    }
    // caso t->valor == v->valor, nao faz nada
    else {
        free(v);
    }

    return t;
}

// funcao auxiliar para pegar altura de um no
int altura(No *t) {
    return t? t->altura : 0;
}

// funcao auxiliar para pegar maior de dois numeros
int max(int x, int y) {
    return x > y? x : y;
}

// rotacao a direta
//     x        y
//   /            \
// y      -->       x
//   \            /
//     z        z
No *rrot(No *x) {
    No *y = x->esq;
    No *z = y->dir;
    
    x->esq = z;
    y->dir = x;

// atualiza a altura no final
    x->altura = max(altura(x->esq), altura(x->dir)) + 1;
    y->altura = max(altura(y->esq), altura(y->dir)) + 1;

    return y;
}

// rotacao a esquerda
//   x             y
//     \         /
//       y --> x 
//     /         \
//   z             z
No *lrot(No *x) {
    No *y = x->dir;
    No *z = y->esq;

    x->dir = z;
    y->esq = x;

// atualiza a altura no final
    x->altura = max(altura(x->esq), altura(x->dir)) + 1;
    y->altura = max(altura(y->esq), altura(y->dir)) + 1;

    return y;
}

// funcao auxiliar que retorna o fator de balanco do no
int equilibrio(No *x) {
    return x? altura(x->esq) - altura(x->dir) : 0;
}

// adiciona o no v  na subarvore t
// retorna nova raiz
No *adiciona_avl(No *t, No *v) {
    // caso base
    if (t == NULL) {
        return v;
    }
    // adiciona a esquerda
    else if (v->valor < t->valor) {
        t->esq = adiciona_avl(t->esq, v);
    }
    // adiciona a direita
    else if (v->valor > t->valor) {
        t->dir = adiciona_avl(t->dir, v);
    }
    // nao adiciona (valor repetido)
    else {
        free(v);
        return t;
    }

    // recalcula a altura
    t->altura = max(altura(t->esq), altura(t->dir)) + 1;

    // fator de balanco
    int eq = equilibrio(t);

    // caso esquerda esquerda
    if (eq > 1 && v->valor < t->esq->valor)  
        return rrot(t);  
  
    // caso direita direita  
    if (eq < -1 && v->valor > t->dir->valor)  
        return lrot(t);  
  
    // caso esquerda direita  
    if (eq > 1 && v->valor > t->esq->valor)  
    {  
        t->esq = lrot(t->esq);  
        return rrot(t);  
    }  
  
    // caso direita esquerda
    if (eq < -1 && v->valor < t->dir->valor)  
    {  
        t->dir = rrot(t->dir);  
        return lrot(t);  
    }  
    
    // retorna nova raiz
    return t;  
}

void adiciona(Colecao* c, int valor)
{
    // cria no com valor
    No *v = cria_no(valor);

    // adiciona de acordo com o tipo da estrutura
    switch (c->estrutura_id) {
        case LISTA_ORDENADO:
            c->inicio = adiciona_lista_ordenado(c->inicio, v);
            break;
        case LISTA_ULTIMO:
            c->inicio = adiciona_lista_ultimo(c->inicio, v);
            break;
        case LISTA_PRIMEIRO:
            c->inicio = adiciona_lista_primeiro(c->inicio, v);
            break;
        case ARVORE_BINARIA:
            c->inicio = adiciona_arvore_binaria(c->inicio, v);
            break;
        case ARVORE_AVL:
            c->inicio = adiciona_avl(c->inicio, v);
            break;
    }
}

// checa ate o primeiro elemento maior que o valor
// 1 - caso exista
// 0 - caso contrario
int existe_lista_ordenado(No *t, int valor) {
    // fim ou valor atual maior
    if (t == NULL || t->valor > valor) return 0;
    // caso base
    else if (t->valor == valor) return 1;
    // recursao
    else return existe_lista_ordenado(t->dir, valor);
}

// checa em todos os elementos de uma lista
// se existe o valor (valor)
// 1 - caso exista
// 0 - caso contrario
int existe_lista(No *t, int valor) {
    // fim da lista
    if (t == NULL) return 0;
    // caso base
    else if (t->valor == valor) return 1;
    // recursao
    else return existe_lista(t->dir, valor);
}

// checa na arvore se existe valor (valor)
// 1 - caso exista
// 0 - caso contrario
int existe_arvore(No *t, int valor) {
    // fim da arvore
    if (t == NULL) {
        return 0;
    }
    // caso base
    else if (t->valor == valor) {
        return 1;
    }
    // valor esta a direita
    else if (t->valor < valor) {
        return existe_arvore(t->dir, valor);
    }
    // valor esta a esquerda
    else {
        return existe_arvore(t->esq, valor);
    }
}

// checa se o valor (valor) esta na colecao
// 1 - caso exista
// 0 - caso contrario
int existe(Colecao* c, int valor)
{
    switch (c->estrutura_id) {
        case LISTA_ORDENADO:
            return existe_lista_ordenado(c->inicio, valor);
        case LISTA_ULTIMO:
        case LISTA_PRIMEIRO:
            return existe_lista(c->inicio, valor);
        case ARVORE_BINARIA:
        case ARVORE_AVL:
            return existe_arvore(c->inicio, valor);
    }
}

// elimina todos os nos recursivamente
void destroi_lista(No *t) {
    if (t != NULL) {
        No *x = t->dir;
        free(t);
        destroi_lista(x);
    }
}

// elimina todos os nos recursivamente
void destroi_arvore(No *t) {
    if (t == NULL) return;

    No *l = t->esq, *r = t->dir;
    free(t);

    destroi_arvore(l);
    destroi_arvore(r);
}

// destroi colecao
void destroi(Colecao* c)
{
    switch (c->estrutura_id) {
        case LISTA_ORDENADO:
        case LISTA_ULTIMO:
        case LISTA_PRIMEIRO:
            destroi_lista(c->inicio);
            break;
        case ARVORE_BINARIA:
        case ARVORE_AVL:
            destroi_arvore(c->inicio);
            break;
    }

    free(c);
}