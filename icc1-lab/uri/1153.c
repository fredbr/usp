#include <stdio.h>

int main() {
	int x;
	scanf("%d", &x);

	static int fac[13] = {0, 1, 2, 6, 24, 
		                  120, 720, 5040, 40320, 362880, 
		                  3628800, 39916800, 479001600};

  	printf("%d\n", fac[x]);

  	return 0;
}