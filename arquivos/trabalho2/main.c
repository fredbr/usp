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

void erro_inexistente() {
	puts("Registro Inexistente.");
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
			erro_inexistente();
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
	else if (op == 3) {
		char arquivo_bin[80];
		scanf("%s", arquivo_bin);

		int m;
		scanf("%d", &m);

		struct Register *search = make_register_from_input(m);

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
			delete_register(search);
			falha_processamento();
		}

		if (header.numeroRegistrosInseridos == 0) {
			fclose(f);
			delete_register(search);
			erro_inexistente();
		}

		struct Register *reg = make_register();

		// le registros e escreve na tela coforme o numero total
		// de registros escritos
		int total = 0;
		for (int rnn = 0; rnn < header.numeroRegistrosInseridos; rnn++) {
			if (read_register(f, rnn, reg) == 1) {
				continue;
			}

			// caso o reg esteja contido em search 
			if (valid_register(reg, search)) {
				print_register(stdout, reg);
				total++;
			}
		}

		delete_register(reg);
		delete_register(search);

		fclose(f);

		if (total == 0) {
			erro_inexistente();
		}
	}
	else if (op == 4) {
		char arquivo_bin[80];
		int rnn;
		scanf("%s %d", arquivo_bin, &rnn);

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

		// caso o registro nao exista
		if (header.numeroRegistrosInseridos == 0 ||
			header.numeroRegistrosInseridos <= rnn) {
			fclose(f);
			erro_inexistente();
		}

		struct Register *reg = make_register();
		
		// caso registro esteja marcado para ser deletado
		if (read_register(f, rnn, reg) == 1) {
			fclose(f);
			delete_register(reg);
			erro_inexistente();
		}

		print_register(stdout, reg);
	
		delete_register(reg);

		fclose(f);
	}
	else if (op == 5) {
		char arquivo_bin[80];
		int n;
		scanf("%s %d", arquivo_bin, &n);

		FILE *f = fopen(arquivo_bin, "rwb+");
		if (f == NULL) {
			falha_processamento();
		}

		struct Header header;
		read_header(f, &header);

		// caso cabecalho esteja invalido
		if (header.status == '0') {
			fclose(f);
			falha_processamento();
		}

		// arquivo inconsistente
		header.status = '0';
		write_header(f, &header);

		int erased = 0;
		for (int i = 0; i < n; i++) {
			int m;
			scanf("%d", &m);

			struct Register *search = make_register_from_input(m);

			struct Register *reg = make_register();

			// le registros e marca arquivo como apagado caso necessario
			for (int rnn = 0; rnn < header.numeroRegistrosInseridos; rnn++) {
				if (read_register(f, rnn, reg) == 1) {
					continue;
				}

				if (valid_register(reg, search)) {
					mark_register(f, rnn);
					erased++;
				}
			}

			delete_register(reg);
			delete_register(search);
		}
		
		// arquivo consistente
		header.numeroRegistrosInseridos -= erased;
		header.numeroRegistrosRemovidos += erased;
		header.status = '1';
		write_header(f, &header);

		fclose(f);

		binarioNaTela(arquivo_bin);
	}
	else if (op == 6) {
		char arquivo_bin[80];
		int n;
		scanf("%s %d", arquivo_bin, &n);

		FILE *f = fopen(arquivo_bin, "rwb+");
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

		// arquivo inconsistente
		header.status = '0';
		write_header(f, &header);

		int rnn = header.RNNproxRegistro;
		for (int i = 0; i < n; i++) {
			struct Register *reg = make_register_from_full_input();

			write_register(f, rnn, reg);
			rnn++;
			delete_register(reg);
		}
		
		// arquivo consistente
		header.status = '1';
		header.numeroRegistrosInseridos += n;
		header.RNNproxRegistro += n;
		write_header(f, &header);

		fclose(f);

		binarioNaTela(arquivo_bin);
	}
	else if (op == 7) {
		char arquivo_bin[80];
		int n;
		scanf("%s %d", arquivo_bin, &n);

		FILE *f = fopen(arquivo_bin, "rwb+");
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

		// arquivo inconsistente
		header.status = '0';
		write_header(f, &header);

		int total = 0;
		for (int i = 0; i < n; i++) {
			int rnn, m;
			scanf("%d %d", &rnn, &m);

			struct Register *reg = make_register();
			
			// caso o registro nao exista nao faz nada
			if (rnn >= header.RNNproxRegistro || read_register(f, rnn, reg) == 1) {
				delete_register(reg);
				continue;
			}
			
			update_register_from_input(reg, m);

			// atualiza o registro sem sobrescrever o lixo
			write_register_with_trash(f, rnn, reg);

			delete_register(reg);
			total += 1;
		}
		
		// arquivo consistente
		header.status = '1';
		header.numeroRegistrosAtualizados += total;

		write_header(f, &header);

		fclose(f);

		binarioNaTela(arquivo_bin);
	}

	return 0;
}