#include "register.h"
#include "header.h"

#include <stdio.h>
#include <stdlib.h>

struct Register* make_register() {
	// inicializa tudo como 0
	struct Register *reg = calloc(1, sizeof(struct Register));
	return reg;
}

void delete_register(struct Register *reg) {
	// deleta o registro
	free(reg->cidadeBebe);
	free(reg->cidadeMae);
	free(reg);
}

// le o registro com RNN especificado
// retorna 1 se o registro lido estiver marcado para ser deletado
// retorna 0 senao
int read_register(FILE *f, int RNN, struct Register *reg) {
	char toRemove;
	// primeiro byte do registro
	fseek(f, HEADER_SIZE + RNN*REGISTER_SIZE, SEEK_SET);

	fread(&toRemove, 1, 1, f);

	// checa se estivar marcado para ser removido
	if (toRemove != -1) {
		toRemove = 0;
	} else {
		toRemove = 1;
	}

	// volta para o primeiro byte do registro no arquivo
	fseek(f, HEADER_SIZE + RNN*REGISTER_SIZE, SEEK_SET);

	fread(&reg->cidadeMaeSize, sizeof(reg->cidadeMaeSize), 1, f);
	fread(&reg->cidadeBebeSize, sizeof(reg->cidadeBebeSize), 1, f);

	if (reg->cidadeMaeSize != 0) {
		// caso ja estiver sendo utilizado aloca memoria nova para
		// representar o nome da cidade da mae
		if (reg->cidadeMae != NULL) {
			free(reg->cidadeMae);
		}

		reg->cidadeMae = malloc(reg->cidadeMaeSize+1);
		fread(reg->cidadeMae, reg->cidadeMaeSize, 1, f);
	}

	if (reg->cidadeBebeSize != 0) {
		// caso ja estiver sendo utilizado aloca memoria nova para
		// representar o nome da cidade do bebe
		if (reg->cidadeBebe != NULL) {
			free(reg->cidadeBebe);
		}

		reg->cidadeBebe = malloc(reg->cidadeBebeSize+1);
		fread(reg->cidadeBebe, reg->cidadeBebeSize, 1, f);
	}

	// pula para a parte fixa do registro
	fseek(f, HEADER_SIZE + RNN*REGISTER_SIZE + REGISTER_FIXED_OFFSET, SEEK_SET);

	fread(&reg->idNascimento, sizeof(reg->idNascimento), 1, f);
	fread(&reg->idadeMae, sizeof(reg->idadeMae), 1, f);
	fread(&reg->dataNascimento, sizeof(reg->dataNascimento), 1, f);
	fread(&reg->sexoBebe, sizeof(reg->sexoBebe), 1, f);
	fread(&reg->estadoMae, sizeof(reg->estadoMae), 1, f);
	fread(&reg->estadoBebe, sizeof(reg->estadoBebe), 1, f);

	return toRemove;
}

// funcao auxiliar para escrever strings de tamanho fixo em registro
// preenche dados nulos com '$'
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

// funcao para escrever um registro em um RNN especifico do arquivo binario
void write_register(FILE *f, int RNN, struct Register *reg) {
	// pula para a posicao exata de escrita do arquivo
	fseek(f, HEADER_SIZE + RNN*REGISTER_SIZE, SEEK_SET);

	// escreve tamanho dos campos variaveis
	fwrite(&reg->cidadeMaeSize, sizeof(reg->cidadeMaeSize), 1, f);
	fwrite(&reg->cidadeBebeSize, sizeof(reg->cidadeBebeSize), 1, f);

	// escreve campos variaveis
	fwrite(reg->cidadeMae, reg->cidadeMaeSize, 1, f);
	fwrite(reg->cidadeBebe, reg->cidadeBebeSize, 1, f);

	// quantidade de bytes ja escritos
	int written = REGISTER_VARIABLE_SIZE + reg->cidadeMaeSize + reg->cidadeBebeSize;

	// preenche espaco vazio do registro com '$'
	for (int i = written; i < REGISTER_FIXED_OFFSET; i++) {
		fwrite("$", 1, 1, f);
	}

	// escreve resto dos campos
	fwrite(&reg->idNascimento, sizeof(reg->idNascimento), 1, f);
	fwrite(&reg->idadeMae, sizeof(reg->idadeMae), 1, f);
	write_fixed_string(f, reg->dataNascimento, sizeof(reg->dataNascimento));
	write_fixed_string(f, reg->sexoBebe, sizeof(reg->sexoBebe));
	write_fixed_string(f, reg->estadoMae, sizeof(reg->estadoMae));
	write_fixed_string(f, reg->estadoBebe, sizeof(reg->estadoBebe));
}

// funcao para auxiliar a impressao na tela dos registros
// segundo a especificacao do trabalho
void print_register(FILE *f, struct Register *reg) {
	fprintf(f, "Nasceu em ");

	// caso campos estejam vazios imprime '-'
	if (reg->cidadeBebeSize == 0) {
		fprintf(f, "-/");
	}
	else {
		for (int i = 0; i < reg->cidadeBebeSize; i++) {
			fputc(reg->cidadeBebe[i], f);
		}
		fprintf(f, "/");
	}

	if (*reg->estadoBebe == '\0') {
		fprintf(f, "-");
	}
	else {
		fprintf(f, "%.2s", reg->estadoBebe);
	}

	fprintf(f, ", em ");

	if (*reg->dataNascimento == '\0') {
		fprintf(f, "-");
	}
	else {
		fprintf(f, "%.10s", reg->dataNascimento);
	}

	fprintf(f, ", um bebê de sexo ");

	if (*reg->sexoBebe == '0') {
		fprintf(f, "IGNORADO");
	}
	else if (*reg->sexoBebe == '1') {
		fprintf(f, "MASCULINO");
	}
	else if (*reg->sexoBebe == '2') {
		fprintf(f, "FEMININO");
	}

	fprintf(f, ".\n");
}
