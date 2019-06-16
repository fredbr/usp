#include "image.h"

#include "utils.h"

Image* read_pgm(FILE *in) {
	// buffer para guardar elementos descartados do arquivo
	char buf[50];

	// descarta linha
	(void) fscanf(in, "%s", buf);

	// aloca uma imagem nova
	Image* img = (Image*) malloc(sizeof(Image));

	// le dimensoes da imagem
	// (trato n como numero de linhas e m como colunas)
	(void) fscanf(in, "%d %d", &img->m, &img->n);

	// descarta linha
	(void) fscanf(in, "%s", buf);

	// aloca matriz de pixels para serem lidos
	img->v = (Pixel**) alloc_matrix(img->n, img->m, sizeof(Pixel));

	// le pixels da imagem
	read_pixels(in, img->v, img->n, img->m);

	return img;
}

void read_pixels(FILE *in, Pixel** v, int n, int m) {
	for (int i = 0; i < n; i++) {
		for (int j = 0; j < m; j++) {
			// le cada pixel da imagem
			(void) fscanf(in, "%hhu", &v[i][j]);
		}
	}
}