#include <bits/stdc++.h>

#define ff first
#define ss second

#define pb push_back
#define eb emplace_back
#define all(x) begin(x), end(x)
#define rall(x) rbegin(x), rend(x)
#define clr(x, c) memset((x), (c), sizeof((x)))

using namespace std;

using ll = long long;
using ii = pair<int, int>;

int const inf = 0x3f3f3f3f;
ll const linf = 0x3f3f3f3f3f3f3f3f;

int const maxn = 1010;

int n, m;
string s;

int dp[maxn][maxn];
int opt[maxn][maxn];

int solve(int i, int j) {
    if (i == n) return j == 0;

    int& d = dp[i][j];

    if (d != -1) return d;

    if (s[i] != '?') {
        int dig = s[i]- '0';

        opt[i][j] = dig;
        return d = solve(i+1, (j*10 + dig) % m);
    }

    for (int k = 0; k <= 9; k++) {
        d = solve(i+1, (j*10 + k) % m);
        opt[i][j] = k;

        if (d != 0) return d;
    }
    return d;
}

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    clr(dp, -1);

    cin >> s >> m;

    n = s.size();

    if (s[0] =='?') {
        for (int i = 1; i <= 9; i++) {
            dp[0][0] = solve(1, i % m);
            opt[0][0] = i;

            if (dp[0][0] != 0) break;
        }
    }
    else {
        solve(0, 0);
    }

    if (dp[0][0] == 0) {
        cout << "*\n";
    }
    else {
        int at = 0;
        for (int i = 0; i < n; i++) {
            cout << opt[i][at];
            at = (at*10 + opt[i][at]) % m;
        }
        cout << '\n';
    }
}
