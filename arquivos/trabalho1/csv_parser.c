#include "csv_parser.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "register.h"

void ignore_line(FILE *f) {
	fscanf(f, "%*[^\n]\n");
}

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

int next_register(FILE *f, struct Register *reg) {
	static char buf[200];

	if (!read_until(f, buf)) {
		return 0;
	}
	reg->cidadeMaeSize = strlen(buf);
	if (reg->cidadeMae) {
		free(reg->cidadeMae);
	}
	reg->cidadeMae = malloc(reg->cidadeMaeSize);
	memcpy(reg->cidadeMae, buf, reg->cidadeMaeSize);

	read_until(f, buf);
	reg->cidadeBebeSize = strlen(buf);
	if (reg->cidadeBebe) {
		free(reg->cidadeBebe);
	}
	reg->cidadeBebe = malloc(reg->cidadeBebeSize);
	memcpy(reg->cidadeBebe, buf, reg->cidadeBebeSize);

	fscanf(f, "%d%*c", &reg->idNascimento) ;
	read_until(f, buf);

	read_until(f, buf);
	memcpy(reg->dataNascimento, buf, 10);

	read_until(f, buf);
	memcpy(reg->sexoBebe, buf, 1);

	read_until(f, buf);
	memcpy(reg->estadoMae, buf, 2);

	read_until(f, buf);
	memcpy(reg->estadoBebe, buf, 2);

	return 1;
}
