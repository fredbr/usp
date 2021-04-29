#include <iostream>
#include <algorithm>
#include <cstring>

using namespace std;

#define clr(v, s) memset((v), (s), sizeof((v)))

int const maxn = 110;

int dp[maxn][maxn];
string a, b;
int n, m;

int ind(char a) {
    return a-'a'+1;
}

int solve(int i, int j) {
    if (i == n and j == m) return 0;

    int& d = dp[i][j];
    if (d != -1) return d;

    if (i == n) {
        d = 0;
        for (int k = j; k < m; k++) d += ind(b[k]);
        return d;
    }
    if (j == m) {
        d = 0;
        for (int k = i; k < n; k++) d += ind(a[k]);
        return d;
    }

    if (a[i] == b[j]) return d = solve(i+1, j+1);

    d = min({
        abs(a[i]-b[j]) + solve(i+1, j+1),
        ind(a[i]) + solve(i+1, j),
        ind(b[j]) + solve(i, j+1)
    });

    return d;
}

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    clr(dp, -1);

    getline(cin, a);
    getline(cin, b);

    n = a.size(), m = b.size();

    cout << solve(0,  0) << '\n';
}
