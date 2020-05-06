#include <stdio.h>
#include <stdlib.h>

typedef struct {
	// para o null
	char nome[21];
	char marca[21];
	char ean13[14];
	int valor;
} Produto;

void grava_produto(FILE *f, Produto *p) {
	fwrite(p->nome, 1, 20, f);
	fwrite(p->marca, 1, 20, f);
	fwrite(p->ean13, 1, 13, f);
	fwrite(&(p->valor), 1, sizeof(int), f);
}

int le_produto(FILE *f, Produto *p) {
	if (fread(p->nome, 1, 20, f) == 0) return 0;
	fread(p->marca, 1, 20, f);
	fread(p->ean13, 1, 13, f);
	fread(&(p->valor), 1, sizeof(int), f);
	return 1;
}

void imprime_produto(Produto *p) {
	printf("%s\n", p->nome);
	printf("%s\n", p->marca);
	printf("%s\n", p->ean13);
	printf("%d\n", p->valor);
	printf("\n");
}

int main() {
	int op;

	printf("Escolha a operacao:\n"
		   "    1 - escita de dados\n"
		   "    2 - leitura dos dados\n");
	scanf(" %d", &op);

	printf("Dados serao lidos/gravados no arquivo dados.bin\n\n");

	if (op == 1) {
		FILE *f = fopen("dados.bin", "wb+");

		printf("Os dados serao lidos linha a linha ate EOF (Ctrl-D)\n");
		printf("Cada produto e descrito por 4 linhas (nome, marca, ean13 e valor)\n");

		Produto p = {};
		while (scanf(" %[^\n] %[^\n] %[^\n] %d ", 
			         p.nome, p.marca, p.ean13, &p.valor) != EOF) {
			grava_produto(f, &p);
			printf("Produto gravado!\n");
		}
		fclose(f);
	}
	else if (op == 2) {
		FILE *f = fopen("dados.bin", "rb");

		printf("\n");
		if (f == NULL) {
			printf("ERRO: Arquivo dados.bin nao presente\n");
			exit(1);
		}

		Produto p;
		while (le_produto(f, &p) != 0) {
			imprime_produto(&p);
		}

		fclose(f);
	}
}