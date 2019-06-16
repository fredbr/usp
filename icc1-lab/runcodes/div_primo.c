#include <stdio.h>
#include <tgmath.h>
#include <inttypes.h>

#define MAX(a, b) \
	(a) > (b) ? (a) : (b)

typedef int64_t ll;

ll isqrt(ll x) {
	ll l = 0, r = sqrt((double)x) + 10;
	while (l+1 < r) {
		ll m = l + (r-l)/2;
		if (m*m <= x) l = m;
		else r = m;
	}
	return l;
}

ll solve(ll x) {
	ll limit = isqrt(x);

	ll ans = 1;

	for (ll i = 2; i <= limit; i++) {
		if (x%i == 0) {
			ans = MAX(ans, i);

			do {
				x /= i;
			} while (x%i == 0);
		}
	}

	ans = MAX(ans, x);
	return ans;
}

int main() {
	ll x = 600851475143ll;

	printf("%" PRId64 "\n", solve(x));
}