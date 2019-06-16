#include <stdio.h>
#include <stdlib.h>

#include "image.h"
#include "search.h"
#include "utils.h"

int main() {
	// le nome da imagem
	char img_name[50];
	(void) scanf("%s", img_name);

	// abre arquivo da imagem
	FILE *img_file = fopen(img_name, "r");

	// le e processa arquivo da imagem
	Image *img = read_pgm(img_file);

	// arquivo nao sera mais usado
	fclose(img_file);

	// construir matriz de visitados
	// 0 caso nao tenha sido visitado ainda
	// numero do id caso sim
	VisMatrix vis = construct_vismatrix(img->n, img->m);

	int num_queries;
	(void) scanf("%d", &num_queries);

	for (int i = 1; i <= num_queries; i++) {
		int x, y, crit;

		(void) scanf("%d %d %d", &x, &y, &crit);

		// cria um intervalo que armazena o id atual, a soma 
		// e a quatidade de elementos inclusos na busca atual
		Interval at = {.cnt = 0, .id = i, .sum = 0};

		// caso nao esteja em nenhum ID, processar partindo desse pixel
		if (vis[x][y] == 0) {
			dfs(vis, &at, img, x, y, crit);
		}
	}

	for (int i = 0; i < img->n; i++) {
		for (int j = 0; j < img->m; j++) {
			// caso pixel (i, j) seja uma borda
			if (is_corner(img, vis, i, j)) {
				(void) printf("(%d, %d)\n", i, j);
			}
		}
	}

	// libera as matrizes alocadas
	free_matrix((void**)vis, img->n);
	free_matrix((void**)img->v, img->n);
	free(img);
}