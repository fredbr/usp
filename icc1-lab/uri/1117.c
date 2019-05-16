#include <stdio.h>

int main() {
	int valid = 0;
	double notas[2];
	
	while (valid < 2) {
		double x;
		scanf("%lf", &x);

		if (x >= 0.0 && x <= 10.0) {
			notas[valid++] = x;
		}
		else {
			printf("nota invalida\n");
		}
	}

	printf("media = %.2lf\n", (notas[0] + notas[1]) / 2.0);

	return 0;
}