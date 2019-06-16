#include <stdio.h>
#include <inttypes.h>

typedef uint64_t ll;

ll gcd(ll a, ll b) {
	if (b == 0) return a;
	return gcd(b, a%b);
}

ll lcm(ll a, ll b) {
	return a/gcd(a, b)*b;
}

int main() {
	ll ans = 1;

	for (ll i = 1; i <= 20; i++)
		ans = lcm(ans, i);

	printf("%" PRId64 "\n", ans);
}