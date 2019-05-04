#include <stdio.h>

typedef unsigned long long u64;

int main() {
	u64 fib[61] = {0, 1};
	int i;
	for (i = 2; i < 61; i++)
		fib[i] = fib[i-1] + fib[i-2];

	int t;
	scanf("%d", &t);

	while (t--) {
		int x;
		scanf("%d", &x);

		printf("Fib(%d) = %llu\n", x, fib[x]);
	}
}