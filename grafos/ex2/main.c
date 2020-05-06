#include <stdio.h>

#include "grafo.h"

int main() {
	int n, m;

	scanf("%d %d", &n, &m);

	Graph *g = create_graph(n);

	for (int i = 0; i < m; i++) {
		int u, v;
		scanf("%d %d", &u, &v);

		add_edge(g, u, v);
	}

	int q;
	scanf("%d", &q);

	for (int i = 0; i < q; i++) {
		int op;
		scanf("%d", &op);

		// add_edge
		if (op == 1) {
			int u, v;
			scanf("%d %d", &u, &v);

			add_edge(g, u, v);
		}
		// remove_edge
		else if (op == 2) {
			int u, v;
			scanf("%d %d", &u, &v);

			remove_edge(g, u, v);
		}
		// print_graph
		else {
			print_graph(g);
			printf("\n");
		}
	}
}