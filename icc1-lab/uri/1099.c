#include <stdio.h>

#define MAX(a, b) ((a)<(b)?(b):(a))

#define SWAP(a, b) do { \
	typeof(a) _tmp = a; \
	a = b; \
	b = _tmp; \
	} while (0)

long long f(long long x) {
	return (x*(x+1)/2)-2LL*((x/2)*(x/2+1)/2);
}

int main() {
	int n;
	scanf("%d", &n);

	while (n--) {
		int a, b;
		scanf("%d %d", &a , &b);

		if (a > b) SWAP(a, b);

		if (b%2 == 1) b--;

		printf("%lld\n", MAX(0LL, f(b)-f(a)));
	}
}
