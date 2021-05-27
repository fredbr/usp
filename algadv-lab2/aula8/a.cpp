#include <bits/stdc++.h>

#define ff first
#define ss second

#define pb push_back
#define eb emplace_back
#define all(x) begin(x), end(x)
#define rall(x) rbegin(x), rend(x)
#define clr(x, c) memset((x), (c), sizeof((x)))

using namespace std;

int const maxn = 1010;

int n, m;
string a, b;

int dp[maxn][maxn];

int lcs(int i, int j) {
    if (i == n or j == m) return 0;
    int& d = dp[i][j];

    if (d != -1) return d;

    if (a[i] == b[j]) return d = 1 + lcs(i+1, j+1);
    
    return d = max(lcs(i+1, j), lcs(i, j+1));
}

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    while (getline(cin, a)) {
        getline(cin, b);
        n = a.size(), m = b.size();
        clr(dp, -1);

        cout << lcs(0, 0) << '\n';
    }    
}
