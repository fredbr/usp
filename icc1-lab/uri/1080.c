#include <stdio.h>
#include <limits.h>

int main() {
	int i;

	int biggest = INT_MIN, best;

	for (i = 1; i <= 100; i++) {
		int x;
		scanf("%d", &x);

		if (x >= biggest) {
			biggest = x;
			best = i;
		}
	}

	printf("%d\n%d\n", biggest, best);

	return 0;
}