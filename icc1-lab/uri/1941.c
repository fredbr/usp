#include <stdio.h>
#include <string.h>

#define MAXN 2001

typedef struct {
	int total, cnt;
} state;

char s[MAXN];
int v[MAXN];
state dp[MAXN][MAXN];

state max(state a, state b) {
	state ans;
	if (a.cnt == b.cnt) {
		ans.cnt = a.cnt;
		if (a.total > b.total)
			ans.total = a.total;
		else
			ans.total = b.total;
	}
	else if (a.cnt > b.cnt) {
		ans.cnt = a.cnt;
		ans.total = a.total;
	}
	else {
		ans.cnt = b.cnt;
		ans.total = b.total;
	}
	return ans;
}

state solve(int l, int r) {
	state ans = {0, 0};

	if (l > r) return ans;
	
	if (dp[l][r].total != -1) return dp[l][r];

	state add_both = {0, 0};
	if (s[l] == s[r]) {
		add_both = solve(l+1, r-1);
		add_both.total += 2;
		add_both.cnt += v[l] + v[r];

		if (l == r) {
			add_both.total--;
			add_both.cnt -= v[l];
		}
	}

	state skip_left = solve(l+1, r);
	state skip_right = solve(l, r-1);

	ans = max(ans, add_both);
	ans = max(ans, skip_left);
	ans = max(ans, skip_right);

	return dp[l][r] = ans;
}

void init() {
	memset(dp, -1, sizeof(dp));
}

int main() {
	init();

	scanf("%s", s);
	int n = strlen(s);

	int m;
	scanf("%d", &m);

	int i;
	for (i = 0; i < m; i++) {
		int x;
		scanf("%d", &x);

		v[x-1] = 1;
	}

	state ans = solve(0, n-1);

	printf("%d\n", ans.total);
}