#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

#include "grafo.h"
#include "linked_list.h"

int main() {
	int n, m;

	scanf("%d %d", &n, &m);

	Graph *g = create_graph(n);

	// grau de chegada de cada vertice
	int *grau = calloc(n, sizeof(int));

	for (int i = 0; i < m; i++) {
		int u, v;
		scanf("%d %d", &u, &v);

		add_edge(g, u, v);

		grau[v]++;
	}

	int *top_sort = malloc(n * sizeof(int));
	int atual = 0;

	// caso nao tenha nenhum pai no grafo original adicionamos o vertice no topological sort
	for (int i = 0; i < n; i++) {
		if (grau[i] == 0) {
			top_sort[atual++] = i;
		}
	}

	for (int i = 0; i < atual; i++) {
		int u = top_sort[i];

		// remove o vertice v do grafo e reduz o grau de cada filho por 1
		for (Node* head = g->v[u]->head; head != NULL; head = next_node(head)) {
			int v = get_value(head);

			grau[v]--;

			// caso o filho nao tenha mais pais no grafo adiciona ele no topological sort
			if (grau[v] == 0) {
				top_sort[atual++] = v;
			}
		}
	}

	free(grau);

	// caso existam vertices que nao estao no topological sort
	// entao o grafo tem ciclos e paramos o algoritmo
	if (atual != n) {
		printf("-1\n");

		free(top_sort);
		delete_graph(g);
		return 0;
	}

	int *height = calloc(n, sizeof(int));

	// agora percorremos o topological sort de tras pra frente calculando 
	// a altura de cada vertice
	for (int i = n-1; i >= 0; i--) {
		int u = top_sort[i];

		for (Node* head = g->v[u]->head; head != NULL; head = next_node(head)) {
			int v = get_value(head);
			
			// altura[x] = max(altura[filhos]) + 1
			// caso nao tenha filhos altura = 0
			if (height[v] + 1 > height[u]) {
				height[u] = height[v] + 1;
			}
		}
	}

	// a altura maxima no grafo eh a resposta
	int res = 0;
	for (int i = 0; i < n; i++) {
		if (height[i] > res) {
			res = height[i];
		}
	}

	printf("%d\n", res);

	free(height);
	free(top_sort);
	delete_graph(g);

	return 0;
}