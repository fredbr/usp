#include <stdio.h>

int main() {
	double x;
	scanf("%lf", &x);

	double reajuste;
	if (x <= 400.0) {
		reajuste = 15;
	}
	else if (x <= 800.0) {
		reajuste = 12;
	}
	else if (x <= 1200.0) {
		reajuste = 10;
	}
	else if (x <= 2000.0) {
		reajuste = 7;
	}
	else {
		reajuste = 4;
	}

	printf("Novo salario: %.2lf\n", x*(reajuste/100.0 + 1.0));
	printf("Reajuste ganho: %.2lf\n", x*(reajuste/100.0));
	printf("Em percentual: %.0lf %%\n", reajuste);
}