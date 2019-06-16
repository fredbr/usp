#include <stdio.h>
#include <string.h>
#include <inttypes.h>

#define MAXN 2000000

char s[MAXN/2];

uint64_t sieve() {
	memset(s, 1, MAXN/2);

	for (int i = 3; i*i < MAXN; i += 2) {
		if (s[i/2]) {
			for (int j = i*i; j < MAXN; j += 2*i) {
				s[j/2] = 0;
			}
		}
	}

	uint64_t ans = 2;

	for (int i = 3; i < MAXN; i += 2) {
		if (s[i/2]) {
			ans += i;
		}
	}

	return ans;
}

int main() {
	uint64_t ans = sieve();

	printf("%" PRIu64 "\n", ans);
}