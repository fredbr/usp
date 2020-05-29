#include "csv_parser.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "register.h"

// ignora linha nao vazia do arquivo csv
// (primeira linha)
void ignore_line(FILE *f) {
	fscanf(f, "%*[^\n]\n");
}

// le ate uma virgula ou \n
// caso string esteja vazia primero char = \0
int read_until(FILE *f, char *s) {
	while (!feof(f)) {
		char a;
		a = fgetc(f);

		if (a == ',' || a == '\n') break;
		*(s++) = a;
	}
	*s = '\0';
	return !feof(f);
}

// le proximo registro no arquivo csv
// retorna 0 caso falhe
// return 1 caso contrario
int next_register(FILE *f, struct Register *reg) {
	static char buf[200];

	// caso chegue ao fim do arquivo retorna 0
	if (!read_until(f, buf)) {
		return 0;
	}

	// preenche registros variaveis
	reg->cidadeMaeSize = strlen(buf);
	if (reg->cidadeMae) {
		free(reg->cidadeMae);
	}
	reg->cidadeMae = malloc(reg->cidadeMaeSize);
	memcpy(reg->cidadeMae, buf, reg->cidadeMaeSize);

	// preenche registros variaveis
	read_until(f, buf);
	reg->cidadeBebeSize = strlen(buf);
	if (reg->cidadeBebe) {
		free(reg->cidadeBebe);
	}
	reg->cidadeBebe = malloc(reg->cidadeBebeSize);
	memcpy(reg->cidadeBebe, buf, reg->cidadeBebeSize);

	// registros fixos
	fscanf(f, "%d%*c", &reg->idNascimento) ;

	// caso idadeMae seja nulo
	read_until(f, buf);
	if (*buf == '\0') {
		reg->idadeMae = -1;
	}
	else {
		sscanf(buf, "%d", &reg->idadeMae);
	}

	read_until(f, buf);
	memcpy(reg->dataNascimento, buf, 10);

	read_until(f, buf);
	// caso sexoBebe seja nulo tratar como '0'
	if (*buf == '\0') {
		*buf = '0';
	}
	memcpy(reg->sexoBebe, buf, 1);

	read_until(f, buf);
	memcpy(reg->estadoMae, buf, 2);

	read_until(f, buf);
	memcpy(reg->estadoBebe, buf, 2);

	return 1;
}
