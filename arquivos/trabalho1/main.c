#include <stdio.h> 
#include <stdlib.h>
#include <string.h>

#include "header.h"
#include "register.h"
#include "csv_parser.h"

int main() {
	FILE *csv = fopen("entrada.csv", "r");
	ignore_line(csv);

	FILE *f = fopen("teste.bin", "wb");

	struct Header header = {
		0, 1, 2, 3, 4
	};

	write_header(f, &header);

	struct Register *reg = make_register();
	int i = 0;
	while (next_register(csv, reg)) {
		write_register(f, i++, reg);
	}

	fclose(f);
	fclose(csv);

}