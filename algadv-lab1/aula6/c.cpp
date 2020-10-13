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

constexpr int maxn = 101010;

constexpr auto w = "hard";
constexpr int maxw = 4;

int n;
string s;

ll dp[maxw][maxn];
ll a[maxn];

ll solve(int i, int j) {
    if (i == maxw) return linf;
    if (j == n) return 0;

    ll& d = dp[i][j];

    if (d != -1) return d;

    if (s[j] != w[i]) d = solve(i, j+1);
    else d = min(solve(i+1, j+1), a[j] + solve(i, j+1));

    return d;
}

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    clr(dp, -1);    

    cin >> n;

    cin >> s;

    for (int i = 0; i < n; i++) cin >> a[i];

    cout << solve(0, 0) << '\n';
}
