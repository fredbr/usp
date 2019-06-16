#include <stdio.h>

int main() {
	int ans = 0, n = 1000;

	for (int i = 0; i < n; i++) {
		if (i%3 ==0 || i%5 == 0) {
			ans += i;
		}
	}
	printf("%d\n", ans);
}