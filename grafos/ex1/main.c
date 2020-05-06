#include <stdio.h>
#include "grafo.h"

int main() {
	int n, m;
	scanf("%d %d", &n, &m);

	Grafo *g = cria_grafo(n);

	for (int i = 0; i < m; i++) {
		int u, v;
		scanf("%d %d", &u, &v);

		adiciona_aresta(g, u, v);
	}

	int q;
	scanf("%d", &q);

	for (int i = 0; i < q; i++) {
		int op;
		scanf("%d", &op);

		switch (op) {
			// op = 1
			// adiciona aresta
			case 1: {
				int u, v;
				scanf("%d %d", &u, &v);

				adiciona_aresta(g, u, v);

				break;
			}
			// op = 2
			// remove aresta
			case 2: {
				int u, v;
				scanf("%d %d", &u, &v);

				remove_aresta(g, u, v);

				break;
			}
			// op = 3
			// imprime grafo
			case 3: {
				imprime_grafo(g);
				break;
			}
		}
	}

	deleta_grafo(g);

	return 0;
}