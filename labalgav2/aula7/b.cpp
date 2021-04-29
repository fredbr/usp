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

int const maxt = 210;
int const maxp = 55;

int n, tf;
int dp[maxt][maxp];
int pre[maxp], suf[maxp];
vector<int> d, e;

int solve(int t, int p) {
    if (t > tf) return inf;

    int& dt = dp[t][p];

    if (dt != -1) return dt;

    dt = inf;

    if (p == n) dt = tf - t;

    for (int k : d) {
        int nt = pre[p] + k - t;
        if (p != n and nt >= 0) {
            dt = min(dt, nt + solve(t + nt +  pre[p+1] - pre[p], p+1));
        }
    }
    for (int k : e) {
        int nt = suf[p] + k - t;
        if (p != 1 and nt >= 0) {
            dt = min(dt, nt + solve(t + nt + suf[p-1] - suf[p], p-1));
        }
    }

    return dt;
}

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    for (int test = 1; ; test++) {
        cin >>n;

        if (n == 0) break;

        cin >> tf;

        clr(dp, -1);

        for (int i = 2; i <= n; i++) {
            cin >> pre[i];
            suf[i-1] = pre[i];
            pre[i] += pre[i-1];
        }

        suf[n] = 0;
        for (int i = n-1; i > 0; i--) {
            suf[i] += suf[i+1];
        }

        int dn;
        cin >> dn;

        d = vector<int>(dn);
        for (auto& i : d) cin >> i;

        int en;
        cin >> en;
        e = vector<int>(en);
        for (auto& i : e) cin >> i;

        int ans = solve(0, 1);

        cout << "Case Number " << test << ": ";
        if (ans >= inf) {
            cout << "impossible\n";
        }
        else cout << ans << '\n';
    }    
}
