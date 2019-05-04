#include <stdio.h>

double soma(double v[12][12], int col) {
	double sum = 0;
	int i;
	for (i = 0; i < 12; i++)
		sum += v[i][col];
	return sum;
}

double media(double v[12][12], int col) {	
	return soma(v, col)/12.0;
}

int main() {
	double v[12][12];
	int col;
	scanf("%d\n", &col);

	char op;
	scanf("%c", &op);

	int i, j;
	for (i = 0; i < 12; i++)
		for (j = 0; j < 12; j++)
			scanf("%lf", &v[i][j]);

	if (op == 'S') printf("%.1lf\n", soma(v, col));
	else printf("%.1lf\n", media(v, col));

	return 0;
}