#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAXN 101010

typedef long long ll;

char v[MAXN];

ll gcd(ll a, ll b) {
	if (b == 0) return a;
	return gcd(b, a%b);
}

ll lcm(ll a, ll b) {
	return a / gcd(a, b) * b;
}

int main() {
	while (1) {
		memset(v, 0, sizeof(v));

		int n, t;
		scanf("%d %d", &n, &t);

		if (n == 0 && t == 0) break;

		ll tot = 1;
		int i, poss = 1;
		for (i = 0; i < n; i++) {
			int x;
			scanf("%d", &x);
			v[x]++;

			if (poss) tot = lcm(tot, x);

			if (tot > t) poss = 0;
		}

		if (t == 1 || poss == 0 || lcm(tot, t) != t) {
			printf("impossivel\n");
			continue;
		}

		for (i = 2; i <= t; i++) {
			if (v[i] == 0 && lcm(tot, i) == t) {
				printf("%d\n", i);
				poss = 0;
				break;
			}
		}

		if (poss) printf("impossivel\n");
	}

	return 0;
}