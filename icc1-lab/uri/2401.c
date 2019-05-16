#include <stdio.h>
#include <inttypes.h>

static const int vals[4] = {2, 3, 5, 7};

static const int primes[10][4] = {
	{0, 0, 0, 0},
	{0, 0, 0, 0},
	{1, 0, 0, 0},
	{0, 1, 0, 0},
	{2, 0, 0, 0},
	{0, 0, 1, 0},
	{1, 1, 0, 0},
	{0, 0, 0, 1},
	{3, 0, 0, 0},
	{0, 2, 0, 0}
};

uint64_t fexp(uint64_t a, uint64_t b) {
	uint64_t ans = 1;
	while (b) {
		if (b&1) ans *= a;
		a *= a;
		b >>= 1;
	}
	return ans;
}

int main() {
	int t;
	scanf("%d", &t);

	int x[4] = {0};
	while (t--) {
		uint64_t y;
		char op;

		scanf("%" PRIu64 " %c", &y, &op);

		int i, j;
		for (i = 0; i < 4; i++) {
			if (op == '*') x[i] += primes[y][i];
			else x[i] -= primes[y][i];
		}
	}

	uint64_t ans = 1;
	int i;
	for (i = 0; i < 4; i++) {
		ans *= fexp(vals[i], x[i]);
	}

	printf("%" PRIu64 "\n", ans);
}