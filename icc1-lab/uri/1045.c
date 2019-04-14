#include <stdio.h>
#include <math.h>

#define SWAP(a, b) \
	do { \
		typeof(a) tmp = b; \
		b = a; \
		a = tmp; \
	} while (0)

#define EPS 1e-9

#define CMP(x) fabs(x) < EPS

int main() {
	double a, b, c;
	scanf("%lf %lf %lf", &a, &b, &c);

	if (a < b) SWAP(a, b);
	if (b < c) SWAP(b, c);
	if (a < b) SWAP(a, b);

	if (a > b+c || CMP(a-b-c))
		printf("NAO FORMA TRIANGULO\n");
	else {
		if (CMP(a*a - b*b - c*c))
			printf("TRIANGULO RETANGULO\n");
		else if (a*a > b*b + c*c)
			printf("TRIANGULO OBTUSANGULO\n");
		else if (a*a < b*b + c*c)
			printf("TRIANGULO ACUTANGULO\n");

		if (CMP(a-b) && CMP(a-c))
			printf("TRIANGULO EQUILATERO\n");
		else if (CMP(a-b) || CMP(b-c))
			printf("TRIANGULO ISOCELES\n");
	}
	
	return 0;
}