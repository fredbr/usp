#include <stdio.h>
#include <inttypes.h>

#define MAXN 110

int v[MAXN];
int vis[MAXN];

int dfs(int x) {
	vis[x] = 1;

	if (vis[v[x]]) {
		vis[x] = 1;
		return 1;
	}

	vis[x] += dfs(v[x]);

	return vis[x];
}

uint64_t gcd(uint64_t a, uint64_t b) {
	if (b == 0) return a;
	return gcd(b, a%b);
}

uint64_t lcm(uint64_t a, uint64_t b) {
	return a / gcd(a, b) * b;
}

int main() {
	int n;
	scanf("%d", &n);

	int i;
	for (i = 1; i <= n; i++)
		scanf("%d", &v[i]);

	uint64_t ans = 1;
	for (i = 1; i <= n; i++) {
		if (!vis[i]) {
			uint64_t x = dfs(i);
			ans = lcm(ans, x);
		}
	}
	printf ("%" PRIu64 "\n", ans);
	
	return 0;
}