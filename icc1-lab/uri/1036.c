#include <stdio.h>
#include <math.h>

int main() {
	double a, b, c;

	scanf("%lf %lf %lf", &a, &b, &c);

	double delta = b*b - 4.0*a*c;

	if (a == 0.0 || delta < 0.0) {
		printf("Impossivel calcular\n");
		return 0;
	}

	double r1 = (-b+sqrt(delta))/(2.0*a);
	double r2 = (-b-sqrt(delta))/(2.0*a);

	printf("R1 = %.5lf\n", r1);
	printf("R2 = %.5lf\n", r2);
}