#include "header.h"

#include <stdio.h>

// le cabecalho de arquivo binario
void read_header(FILE *f, struct Header *header) {
	// volta para inicio do arquivo
	fseek(f, 0, SEEK_SET);
	
	fread(&header->status, sizeof(header->status), 1, f);
	fread(&header->RNNproxRegistro, sizeof(header->RNNproxRegistro), 1, f);
	fread(&header->numeroRegistrosInseridos, sizeof(header->numeroRegistrosInseridos), 1, f);
	fread(&header->numeroRegistrosRemovidos, sizeof(header->numeroRegistrosRemovidos), 1, f);
	fread(&header->numeroRegistrosAtualizados, sizeof(header->numeroRegistrosAtualizados), 1, f);
}

// escreve cabecalho de arquivo binario
void write_header(FILE *f, struct Header *header) {
	// volta para o comeco do arquivo
	fseek(f, 0, SEEK_SET);

	// header espera um valor em ascii
	fwrite(&header->status, sizeof(header->status), 1, f);
	
	fwrite(&header->RNNproxRegistro, sizeof(header->RNNproxRegistro), 1, f);
	fwrite(&header->numeroRegistrosInseridos, sizeof(header->numeroRegistrosInseridos), 1, f);
	fwrite(&header->numeroRegistrosRemovidos, sizeof(header->numeroRegistrosRemovidos), 1, f);
	fwrite(&header->numeroRegistrosAtualizados, sizeof(header->numeroRegistrosAtualizados), 1, f);
		
	// preenche resto da memoria com lixo '$'
	for (int i = HEADER_USED; i < HEADER_SIZE; i++) {
		fwrite("$", 1, 1, f);
	}
}

void print_header(FILE *f, struct Header* h) {
	fprintf(f, "Status = %c\n", h->status);
	fprintf(f, "RNNproxRegistro = %d\n", h->RNNproxRegistro);
	fprintf(f, "numeroRegistrosInseridos = %d\n", h->numeroRegistrosInseridos);
	fprintf(f, "numeroRegistrosRemovidos = %d\n", h->numeroRegistrosRemovidos);
	fprintf(f, "numeroRegistrosAtualizados = %d\n", h->numeroRegistrosAtualizados);
}
