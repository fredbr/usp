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

// funcao para tratar erros caso haja falha no carregamento dos arquivos
void falha_processamento() {
	puts("Falha no processamento do arquivo.");
	exit(0);
}

void falha_carregamento() {
	puts("Falha no carregamento do arquivo.");
	exit(0);
}

void erro_vazio() {
	puts("Registro inexistente.");
	exit(0);
}

int main() {
	int op;
	scanf("%d", &op);

	if (op == 1) {
		char arquivo_csv[80], arquivo_bin[80];

		scanf("%s %s", arquivo_csv, arquivo_bin);

		FILE *csv = fopen(arquivo_csv, "r");
		FILE *f = fopen(arquivo_bin, "wb");

		// possiveis erros
		if (csv == NULL && f == NULL) {
			falha_carregamento();
		}

		if (csv == NULL) {
			fclose(f);
			falha_carregamento();
		}

		if (f == NULL) {
			fclose(csv);
			falha_carregamento();
		}

		// cabecalho com status = 0, inconsistente
		struct Header header = {
			'0', 0, 0, 0, 0
		};
		write_header(f, &header);

		struct Register *reg = make_register(); 

		// ignora primeira linha do csv
		ignore_line(csv);

		// le e escreve registro por registro enquanto houverem nos registros no csv
		while (next_register(csv, reg)) {
			write_register(f, header.RNNproxRegistro, reg);

			// aumenta o numero de registros inseridos
			header.RNNproxRegistro++;
			header.numeroRegistrosInseridos++;

			// atualiza o cabecalho
			write_header(f, &header);
		}

		delete_register(reg);

		header.status = '1';
		write_header(f, &header);
		// atualiza o cabecalho com status = 1, consistente

		fclose(f);
		fclose(csv);

		binarioNaTela(arquivo_bin);
	}
	else if (op == 2) {
		char arquivo_bin[80];
		scanf("%s", arquivo_bin);

		FILE *f = fopen(arquivo_bin, "rb");

		if (f == NULL) {
			falha_processamento();
		}

		// le cabecalho
		struct Header header;
		read_header(f, &header);

		// caso cabecalho esteja invalido
		if (header.status == '0') {
			fclose(f);
			falha_processamento();
		}

		if (header.numeroRegistrosInseridos == 0) {
			fclose(f);
			erro_vazio();
		}

		struct Register *reg = make_register();

		// le registros e escreve na tela coforme o numero total
		// de registros escritos
		for (int rnn = 0; rnn < header.numeroRegistrosInseridos; rnn++) {
			read_register(f, rnn, reg);

			print_register(stdout, reg);
		}
	
		delete_register(reg);

		fclose(f);
	}
}