#include <stdlib.h>
#include <stdio.h>

#define HEADER_SIZE 4
#define REGISTER_SIZE 30

int get_offset(int rrn) {
	return HEADER_SIZE + REGISTER_SIZE * rrn;
}

int le_header(FILE *f) {
	int topo;

	fseek(f, 0, SEEK_SET);
	fread(&topo, sizeof(int), 1, f);

	return topo;
}

int le_registro_removido(FILE *f, int rrn) {
	int offset = get_offset(rrn) + 1;
	fseek(f, offset, SEEK_SET);

	int topo;
	fread(&topo, sizeof(int), 1, f);

	return topo;
}

int main() {
	FILE *f = fopen("dados.dat", "rb");

	int topo = le_header(f);

	while (topo != -1) {
		printf("rnn = %d, ", topo);
		printf("offset = %d\n", get_offset(topo));

		topo = le_registro_removido(f, topo);
	}

	fclose(f);
}