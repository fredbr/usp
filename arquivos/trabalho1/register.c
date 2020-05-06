#include "register.h"
#include "header.h"

#include <stdio.h>
#include <stdlib.h>

struct Register* make_register() {
	struct Register *reg = calloc(1, sizeof(struct Register));
	return reg;
}

void delete_register(struct Register *reg) {
	free(reg->cidadeBebe);
	free(reg->cidadeMae);
	free(reg);
}

int read_register(FILE *f, int RNN, struct Register *reg) {
	char toRemove;
	fseek(f, HEADER_SIZE + RNN*REGISTER_SIZE, SEEK_SET);

	fread(&toRemove, 1, 1, f);

	if (toRemove != -1) {
		toRemove = 0;
	} else {
		toRemove = 1;
	}

	fseek(f, HEADER_SIZE + RNN*REGISTER_SIZE, SEEK_SET);

	fread(&reg->cidadeMaeSize, sizeof(reg->cidadeMaeSize), 1, f);
	fread(&reg->cidadeBebeSize, sizeof(reg->cidadeBebeSize), 1, f);

	if (reg->cidadeMaeSize != 0) {
		if (reg->cidadeMae != NULL) {
			free(reg->cidadeMae);
		}

		reg->cidadeMae = malloc(reg->cidadeMaeSize+1);
		fread(&reg->cidadeMae, reg->cidadeMaeSize, 1, f);
	}

	if (reg->cidadeBebeSize != 0) {
		if (reg->cidadeBebe != NULL) {
			free(reg->cidadeBebe);
		}

		reg->cidadeBebe = malloc(reg->cidadeBebeSize+1);
		fread(&reg->cidadeBebe, reg->cidadeBebeSize, 1, f);
	}

	fseek(f, HEADER_SIZE + RNN*REGISTER_SIZE + REGISTER_FIXED_OFFSET, SEEK_SET);

	fread(&reg->idNascimento, sizeof(reg->idNascimento), 1, f);
	fread(&reg->dataNascimento, sizeof(reg->dataNascimento), 1, f);
	fread(&reg->sexoBebe, sizeof(reg->sexoBebe), 1, f);
	fread(&reg->estadoMae, sizeof(reg->estadoMae), 1, f);
	fread(&reg->estadoBebe, sizeof(reg->estadoBebe), 1, f);

	return toRemove;
}

void write_fixed_string(FILE *f, char const* s, int size) {
	if (*s == '\0') {
		fwrite("\0", 1, 1, f);
		for (int i = 1; i < size; i++) {
			fwrite("$", 1, 1, f);
		}
	}
	else {
		fwrite(s, size, 1, f);
	}
}

void write_register(FILE *f, int RNN, struct Register *reg) {
	fseek(f, HEADER_SIZE + RNN*REGISTER_SIZE, SEEK_SET);

	fwrite(&reg->cidadeMaeSize, sizeof(reg->cidadeMaeSize), 1, f);
	fwrite(&reg->cidadeBebeSize, sizeof(reg->cidadeBebeSize), 1, f);

	int written = REGISTER_VARIABLE_SIZE + reg->cidadeMaeSize + reg->cidadeBebeSize;
	fwrite(reg->cidadeMae, reg->cidadeMaeSize, 1, f);
	fwrite(reg->cidadeBebe, reg->cidadeBebeSize, 1, f);

	for (int i = written; i < REGISTER_FIXED_OFFSET; i++) {
		fwrite("$", 1, 1, f);
	}

	fwrite(&reg->idNascimento, sizeof(reg->idNascimento), 1, f);
	write_fixed_string(f, reg->dataNascimento, sizeof(reg->dataNascimento));
	write_fixed_string(f, reg->sexoBebe, sizeof(reg->sexoBebe));
	write_fixed_string(f, reg->estadoMae, sizeof(reg->estadoMae));
	write_fixed_string(f, reg->estadoBebe, sizeof(reg->estadoBebe));
}

