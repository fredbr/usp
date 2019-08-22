#include <stdio.h>
#include <stdlib.h>

// funcao de comparacao para o qsort
int comp(void const *a, void const *b) {
	return *(int*)a > *(int*)b;
}

int main() {
	// numero de elementos
	int n;
	scanf("%d", &n);

	// aloca memoria para os elementos
	int *v = (int*) malloc(n * sizeof(int));

	// le os elementos
	for (int i = 0; i < n; i++) scanf("%d", &v[i]);

	// ordena os elementos
	qsort(v, n, sizeof(int), comp);
	
	// imprime os elementos ordenados
	for (int i = 0; i < n; i++) {
		printf("%d", v[i]);
		
		// nao imprimir espaco apos ultimo numero
		if (i+1 != n) printf(" ");
	}

	printf("\n");

	free(v);
	return 0;
}