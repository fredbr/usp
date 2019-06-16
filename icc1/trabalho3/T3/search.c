#include "search.h"
#include "utils.h"

void new_coordinates(int x, int y, int *nx, int *ny, int p) {
	// muda os valores de nx e ny de acordo com o indice p
	static const int dx[] = {-1, 0, 1, 0};
	static const int dy[] = {0, 1, 0, -1};

    *nx = x+dx[p];
    *ny = y+dy[p];
}

VisMatrix construct_vismatrix(int n, int m) {
	// aloca nova matriz de tamanho n por m
	VisMatrix v = (VisMatrix) alloc_matrix(n, m, sizeof(int));

	for (int i = 0; i < n; i++) {
		// zera todos os elementos da matriz
		memset(v[i], 0, m*sizeof(int));
	}

	return v;
}

#define ABS(x) ((x) < 0ll? -(x) : (x))

int is_valid_interval(Interval *at, int val, int crit) {
	// retorna se |val - at/cnt| <= crit
	return (ABS((long long)val*at->cnt - at->sum) <= (long long)crit*at->cnt);
}

#undef ABS

int is_valid_coordinates(Image *img, int x, int y) {
	// checa se esta contido na matriz
    if (x < 0 || y < 0 || x >= img->n || y >= img->m)
        return 0;

    return 1;
}

void dfs(VisMatrix vis, Interval *at, Image *img, int x, int y, int crit) {
	// marca na matriz que (x, y) eh do intervalo de determinado id
	vis[x][y] = at->id;

	// atualiza intervalo
	at->cnt++;
	at->sum += img->v[x][y];

	for (int i = 0; i < 4; i++) {
		int nx, ny;
		// obtem proximas coordenadas
		new_coordinates(x, y, &nx, &ny, i);

		// checa se estao contidas na imagem
		if (!is_valid_coordinates(img, nx, ny)) continue;

		// checa se ja esta contido em um intervalo de id diferente
		if (vis[nx][ny] != 0) continue;

		// se obedercer o criterio, continua na busca
		if (is_valid_interval(at, img->v[nx][ny], crit)) {
			dfs(vis, at, img, nx, ny, crit);
		}
	}
}

int is_corner(Image *img, VisMatrix vis, int x, int y) {
    for (int i = 0; i < 4; i++) {
        int xx, yy;
        // obtem coordenadas proximas
        new_coordinates(x, y, &xx, &yy, i);

        // checa se estao contidas
        if (!is_valid_coordinates(img, xx, yy)) continue;

        // caso diferente eh uma borda
        if (vis[xx][yy] != vis[x][y]) return 1;
    }

    // senao nao eh
    return 0;
}
