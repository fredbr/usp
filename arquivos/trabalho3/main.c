// Disciplina SCC0215 - Arquivos
// Trabalho 1
// Frederico Bulhoes de Souza Ribeiro
// 11208440

#include <stdio.h> 
#include <stdlib.h>
#include <string.h>

#include "aux.h"
#include "csv_parser.h"
#include "header.h"
#include "register.h"
#include "btree.h"

// funcao para tratar erros caso haja falha no carregamento dos arquivos
void falha_processamento() {
	puts("Falha no processamento do arquivo.");
	exit(0);
}

void falha_carregamento() {
	puts("Falha no carregamento do arquivo.");
	exit(0);
}

void erro_inexistente() {
	puts("Registro inexistente.");
	exit(0);
}

int main() {
	int op;
	scanf("%d", &op);

	if (op == 8) {
		char entrada[80], saida[80];
		scanf("%s %s", entrada, saida);

		FILE *in = fopen(entrada, "rb");
		FILE *out = fopen(saida, "rwb");

		// in case of invalid input
		if (in == NULL || out == NULL) {
			falha_processamento();
		}

		HeaderBTree btree_header = btree_loadHeader(out);

		// invalid state
		btree_header.status = '0';
		btree_writeHeader(out, &btree_header);

		struct Header header;
		read_header(in, &header);

		// reads all registers form data file
		for (int i = 0; i < header.numeroRegistrosInseridos; i++) {
			struct Register* r = make_register();

			// if marked for erase, ignore
			if (read_register(in, i, r) == 1) {
				delete_register(r);
				continue;
			}

			btree_insertRegister(out, r->idNascimento, i, &btree_header);
			delete_register(r);
		}

		// valid state
		btree_header.status = '1';
		btree_writeHeader(out, &btree_header);

		fclose(in);
		fclose(out);

		binarioNaTela(saida);
	}
	else if (op == 9) {
		char dados[80], entrada[80], ign[80];
		int key;
		scanf("%s %s %s %d", dados, entrada, ign, &key);

		FILE *data = fopen(dados, "rb");
		FILE *btree = fopen(entrada, "rwb");

		// if invalid input
		if (data == NULL || btree == NULL) {
			falha_processamento();
		}

		HeaderBTree btree_header = btree_loadHeader(btree);

		if (btree_header.status == '0') {
			fclose(data);
			fclose(btree);
			falha_processamento();
		}

		struct Header header;
		read_header(data, &header);

		if (header.status == '0') {
			fclose(data);
			fclose(btree);
			falha_processamento();
		}

		int cnt = 0;
		int rnn = btree_findRegister(btree, &btree_header, key, &cnt);

		// if found index
		if (rnn != -1) {
			struct Register* r = make_register();
			// if not found or marked for erasure
			if (read_register(data, rnn, r) == 1) {
				fclose(data);
				fclose(btree);

				delete_register(r);

				erro_inexistente();
			}

			// everything ok 
			print_register(stdout, r);
			printf("Quantidade de paginas da arvore-B acessadas: %d\n", cnt);
			
			delete_register(r);
		}
		else {
			fclose(data);
			fclose(btree);
			erro_inexistente();
		}
		fclose(data);
		fclose(btree);
	}
	else if (op == 10) {
		char arquivo_bin[80], entrada[80];
		int n;
		scanf("%s %s %d", arquivo_bin, entrada, &n);

		FILE *f = fopen(arquivo_bin, "rwb+");
		FILE *btree = fopen(entrada, "rwb+");

		// caso entrada invalida
		if (f == NULL || btree == NULL) {
			falha_processamento();
		}

		// le cabecalho
		struct Header header;
		read_header(f, &header);

		// caso cabecalho esteja invalido
		if (header.status == '0') {
			fclose(f);
			fclose(btree);
			falha_processamento();
		}

		HeaderBTree h = btree_loadHeader(btree);
		if (h.status == '0') {
			fclose(f);
			fclose(btree);
			falha_processamento();
		}

		// arquivos inconsistentes
		header.status = '0';
		write_header(f, &header);
		h.status = '0';
		btree_writeHeader(btree, &h);

		int rnn = header.RNNproxRegistro;
		// reads n registers to inseer
		for (int i = 0; i < n; i++) {
			struct Register *reg = make_register_from_full_input();

			// inserts on data file and b-tree
			write_register(f, rnn, reg);
			btree_insertRegister(btree, reg->idNascimento, rnn, &h);

			rnn++;
			delete_register(reg);
		}
		
		// arquivo consistente
		header.status = '1';
		header.numeroRegistrosInseridos += n;
		header.RNNproxRegistro += n;
		write_header(f, &header);

		h.status = '1';
		btree_writeHeader(btree, &h);

		fclose(f);
		fclose(btree);

		binarioNaTela(entrada);
	}
	return 0;
}