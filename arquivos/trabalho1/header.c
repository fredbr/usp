#include "header.h"

#include <stdio.h>

void read_header(FILE *f, struct Header *header) {
	fseek(f, 0, SEEK_SET);
	
	fread(&header->status, sizeof(header->status), 1, f);
	fread(&header->RNNproxRegistro, sizeof(header->RNNproxRegistro), 1, f);
	fread(&header->numeroRegistrosInseridos, sizeof(header->numeroRegistrosInseridos), 1, f);
	fread(&header->numeroRegistrosRemovidos, sizeof(header->numeroRegistrosRemovidos), 1, f);
	fread(&header->numeroRegistrosAtualizados, sizeof(header->numeroRegistrosAtualizados), 1, f);
}

void write_header(FILE *f, struct Header *header) {
	fseek(f, 0, SEEK_SET);

	fwrite(&header->status, sizeof(header->status), 1, f);
	fwrite(&header->RNNproxRegistro, sizeof(header->RNNproxRegistro), 1, f);
	fwrite(&header->numeroRegistrosInseridos, sizeof(header->numeroRegistrosInseridos), 1, f);
	fwrite(&header->numeroRegistrosRemovidos, sizeof(header->numeroRegistrosRemovidos), 1, f);
	fwrite(&header->numeroRegistrosAtualizados, sizeof(header->numeroRegistrosAtualizados), 1, f);
	for (int i = HEADER_USED; i < HEADER_SIZE; i++) {
		fwrite("$", 1, 1, f);
	}
}