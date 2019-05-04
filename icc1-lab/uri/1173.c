#include <stdio.h>

int main() {
	int v[10];
	scanf("%d", v);

	printf("N[0] = %d\n", v[0]);

	int i;
	for (i = 1; i < 10; i++) {
		v[i] = 2*v[i-1];
		printf("N[%d] = %d\n", i, v[i]);
	}
}