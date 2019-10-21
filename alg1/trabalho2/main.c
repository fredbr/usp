#include <stdio.h>
#include <stdlib.h>

typedef struct {
	int placa;
	int chegada;
	int saida;
} Carro;

// implementacao da pilha

typedef struct NoPilha_ {
	Carro v;
	struct NoPilha_ *prox;
} NoPilha;

typedef struct {
	NoPilha *inicio;
} Pilha;

Pilha* pilha_cria() {
	Pilha *p = malloc(sizeof(Pilha));
	p->inicio = NULL;
	return p;
}

void pilha_destroi(Pilha *p) {
	NoPilha *t = p->inicio;

	while (t != NULL) {
		NoPilha *aux = t;
		t = t->prox;
		free(aux);
	}

	free(p);
}

int pilha_vazia(Pilha *p) {
	return (p->inicio == NULL);
}

void pilha_insere(Pilha *p, Carro c) {
	NoPilha *t = malloc(sizeof(NoPilha));
	t->v = c;
	t->prox = p->inicio;
	p->inicio = t;
}

Carro pilha_topo(Pilha *p) {
	return *(p->inicio->v);
}

void pilha_pop(Pilha *p) {
	NoPilha *aux = p->inicio->prox;
	free(p->inicio);
	p->inicio = aux;
}

int pilha_existe(Pilha *p, Carro c) {
	PilhaNo *t = p->inicio;

	while (t != NULL) {
		if (t->v == c) return 1;
		t = t->prox;
	}

	return 0;
}

// fim implementacao pilha

// inicio implementacao fila

typedef struct FilaNo_ {
	Carro c;
	struct FilaNo_ *ant, *prox;
} FilaNo;

typedef struct {
	FilaNo *inicio;
} Fila;

Fila* fila_cria() {
	Fila *t = malloc(sizeof(Fila));
	t->inicio = NULL;

	return t;
}

void fila_destroi(Fila *f) {
	FilaNo *t = f->prox;
	while (t != NULL) {
		FilaNo *aux = t;
		t = t->prox;
		free(aux);
	}
	free(f);
}

void fila_insere_fim(Fila *f, Carro c) {
	FilaNo *t = malloc(sizeof(FilaNo));
	t->c = c;
	t->prox = (f->inicio) ? f->inicio : t;
	t->ant = (f->inicio) ? f->inicio->ant : t;
	t->prox->ant = t->ant->prox = t;
}

int fila_vazia(Fila *f) {
	return f->inicio == NULL;
}

Carro fila_topo(Fila *f) {
	return *(f->inicio);
}

void fila_pop(Fila *f) {
	f->
}