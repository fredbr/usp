#include "register.h"
#include "header.h"
#include "aux.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct Register* make_register() {
	// inicializa tudo como 0
	struct Register *reg = calloc(1, sizeof(struct Register));
	if (reg == NULL) {
		exit(1);
	}
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
	// o primeiro byte do registro no arquivo
	fseek(f, HEADER_SIZE + RNN*REGISTER_SIZE, SEEK_SET);

	fread(&reg->cidadeMaeSize, sizeof(reg->cidadeMaeSize), 1, f);

	// marca se o registro foi removido
	if (reg->cidadeMaeSize == -1) {
		return 1;
	}

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

	return 0;
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

void mark_register(FILE *f, int RNN) {
	fseek(f, HEADER_SIZE + RNN*REGISTER_SIZE, SEEK_SET);
	int mark = -1;
	fwrite(&mark, sizeof(int), 1, f);
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

// ve se o registro r esta incluso no s
int valid_register(struct Register *r, struct Register *s) {
	if (s->cidadeMaeSize != 0) {
		if (s->cidadeMaeSize != r->cidadeMaeSize) {
			return 0;
		}
		if (memcmp(r->cidadeMae, s->cidadeMae, r->cidadeMaeSize) != 0) {
			return 0;
		}
	}

	if (s->cidadeBebeSize != 0) {
		if (s->cidadeBebeSize != r->cidadeBebeSize) {
			return 0;
		}
		if (memcmp(r->cidadeBebe, s->cidadeBebe, r->cidadeBebeSize) != 0) {
			return 0;
		}
	}

	if (s->idNascimento != 0) {
		if (s->idNascimento != r->idNascimento) {
			return 0;
		}
	}

	if (s->idadeMae != 0) {
		if (s->idadeMae != r->idadeMae) {
			return 0;
		}
	}

	if (s->dataNascimento[0] != '\0') {
		if (memcmp(s->dataNascimento, r->dataNascimento, 10) != 0) {
			return 0;
		}
	}

	if (s->sexoBebe[0] != '\0') {
		if (memcmp(s->sexoBebe, r->sexoBebe, 1) != 0) {
			return 0;
		}
	}

	if (s->estadoMae[0] != '\0') {
		if (memcmp(s->estadoMae, r->estadoMae, 2) != 0) {
			return 0;
		}
	}

	if (s->estadoBebe[0] != '\0') {
		if (memcmp(s->estadoBebe, r->estadoBebe, 2) != 0) {
			return 0;
		}
	}

	return 1;
}

// cria um registro com m valores lidos da entrada padrao
struct Register* make_register_from_input(int m) {
	struct Register *r = make_register();
	char campo[100];
	char buf[100];

	for (int i = 0; i < m; i++) {
		scanf("%s", campo);
		scan_quote_string(buf);

		if (strcmp(campo, "cidadeMae") == 0) {
			r->cidadeMaeSize = strlen(buf);

			if (r->cidadeMaeSize != 0) {
				r->cidadeMae = malloc(r->cidadeMaeSize);
				if (r->cidadeMae == NULL) exit(1);

				memcpy(r->cidadeMae, buf, r->cidadeMaeSize);
			}
		}

		if (strcmp(campo, "cidadeBebe") == 0) {
			r->cidadeBebeSize = strlen(buf);

			if (r->cidadeBebeSize != 0) {
				r->cidadeBebe = malloc(r->cidadeBebeSize);
				if (r->cidadeBebe == NULL) exit(1);

				memcpy(r->cidadeBebe, buf, r->cidadeBebeSize);
			}
		}

		if (strcmp(campo, "idNascimento") == 0) {
			int x;
			sscanf(buf, "%d", &x);

			r->idNascimento = x;
		}

		if (strcmp(campo, "idadeMae") == 0) {
			int x;
			sscanf(buf, "%d", &x);

			r->idadeMae = x;
		}

		if (strcmp(campo, "dataNascimento") == 0) {
			memcpy(r->dataNascimento, buf, 10);
		}

		if (strcmp(campo, "sexoBebe") == 0) {
			if (buf[0] == '\0') {
				r->sexoBebe[0] = '0';
			}
			else {
				memcpy(r->sexoBebe, buf, 1);
			}
		}

		if (strcmp(campo, "estadoMae") == 0) {
			memcpy(r->estadoMae, buf, 2);
		}

		if (strcmp(campo, "estadoBebe") == 0) {
			memcpy(r->estadoBebe, buf, 2);
		}
	}

	return r;
}

// cria um registro com todos os valores lidos da entrada padrao
struct Register* make_register_from_full_input() {
	struct Register *r = make_register();
	char buf[100];

	scan_quote_string(buf);

	r->cidadeMaeSize = strlen(buf);

	if (r->cidadeMaeSize != 0) {
		r->cidadeMae = malloc(r->cidadeMaeSize);
		if (r->cidadeMae == NULL) exit(1);

		memcpy(r->cidadeMae, buf, r->cidadeMaeSize);
	}

	scan_quote_string(buf);

	r->cidadeBebeSize = strlen(buf);
	
	if (r->cidadeBebeSize != 0) {
		r->cidadeBebe = malloc(r->cidadeBebeSize);
		if (r->cidadeBebe == NULL) exit(1);

		memcpy(r->cidadeBebe, buf, r->cidadeBebeSize);
	}

	scan_quote_string(buf);
	if (buf[0] != '\0') {
		int x;
		sscanf(buf, "%d", &x);

		r->idNascimento = x;
	}
	else {
		r->idNascimento = -1;
	}

	scan_quote_string(buf);
	if (buf[0] != '\0') {
		int x;
		sscanf(buf, "%d", &x);

		r->idadeMae = x;
	}
	else {
		r->idadeMae = -1;
	}
	scan_quote_string(buf);
	memcpy(r->dataNascimento, buf, 10);

	scan_quote_string(buf);
	if (buf[0] == '\0') {
		r->sexoBebe[0] = '0';
	}
	else {
		memcpy(r->sexoBebe, buf, 1);
	}

	scan_quote_string(buf);
	memcpy(r->estadoMae, buf, 2);
	
	scan_quote_string(buf);
	memcpy(r->estadoBebe, buf, 2);
	
	return r;
}

// atualiza o registro com m dados lidos da entrada 
void update_register_from_input(struct Register *r, int m) {
	char campo[100];
	char buf[100];

	for (int i = 0; i < m; i++) {
		scanf("%s", campo);
		scan_quote_string(buf);

		if (strcmp(campo, "cidadeMae") == 0) {
			free(r->cidadeMae);

			r->cidadeMaeSize = strlen(buf);

			if (r->cidadeMaeSize != 0) {
				r->cidadeMae = malloc(r->cidadeMaeSize);
				if (r->cidadeMae == NULL) exit(1);

				memcpy(r->cidadeMae, buf, r->cidadeMaeSize);
			}
		}

		if (strcmp(campo, "cidadeBebe") == 0) {
			free(r->cidadeBebe);

			r->cidadeBebeSize = strlen(buf);

			if (r->cidadeBebeSize != 0) {
				r->cidadeBebe = malloc(r->cidadeBebeSize);
				if (r->cidadeBebe == NULL) exit(1);

				memcpy(r->cidadeBebe, buf, r->cidadeBebeSize);
			}
		}

		if (strcmp(campo, "idNascimento") == 0) {
			int x;
			if (buf[0] == '\0') {
				x = -1;
			}
			else {
				sscanf(buf, "%d", &x);
			}

			r->idNascimento = x;
		}

		if (strcmp(campo, "idadeMae") == 0) {
			int x;
			if (buf[0] == '\0') {
				x = -1;
			}
			else {
				sscanf(buf, "%d", &x);
			}

			r->idadeMae = x;
		}

		if (strcmp(campo, "dataNascimento") == 0) {
			memcpy(r->dataNascimento, buf, 10);
		}

		if (strcmp(campo, "sexoBebe") == 0) {
			if (buf[0] == '\0') {
				r->sexoBebe[0] = '0';
			}
			else {
				memcpy(r->sexoBebe, buf, 1);
			}
		}

		if (strcmp(campo, "estadoMae") == 0) {
			memcpy(r->estadoMae, buf, 2);
		}

		if (strcmp(campo, "estadoBebe") == 0) {
			memcpy(r->estadoBebe, buf, 2);
		}
	}
}

// write_register mas nao sobrescreve o lixo
void write_register_with_trash(FILE *f, int RNN, struct Register *reg) {
	// pula para a posicao exata de escrita do arquivo
	fseek(f, HEADER_SIZE + RNN*REGISTER_SIZE, SEEK_SET);

	// escreve tamanho dos campos variaveis
	fwrite(&reg->cidadeMaeSize, sizeof(reg->cidadeMaeSize), 1, f);
	fwrite(&reg->cidadeBebeSize, sizeof(reg->cidadeBebeSize), 1, f);

	// escreve campos variaveis
	fwrite(reg->cidadeMae, reg->cidadeMaeSize, 1, f);
	fwrite(reg->cidadeBebe, reg->cidadeBebeSize, 1, f);

	fseek(f, HEADER_SIZE + RNN*REGISTER_SIZE + REGISTER_FIXED_OFFSET, SEEK_SET);
	// escreve resto dos campos
	fwrite(&reg->idNascimento, sizeof(reg->idNascimento), 1, f);
	fwrite(&reg->idadeMae, sizeof(reg->idadeMae), 1, f);
	write_fixed_string(f, reg->dataNascimento, sizeof(reg->dataNascimento));
	write_fixed_string(f, reg->sexoBebe, sizeof(reg->sexoBebe));
	write_fixed_string(f, reg->estadoMae, sizeof(reg->estadoMae));
	write_fixed_string(f, reg->estadoBebe, sizeof(reg->estadoBebe));
}