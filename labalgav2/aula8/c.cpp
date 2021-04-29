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

int const maxk = 101;
int const maxw = 1010;
int const maxn = 11;

int n, x, t, k;
double limite;

double peso[maxk], v[maxk];
double dp[maxk][maxw][maxn*2];

double solve(int i, int w, int r) {
    if (w > limite or r > 2*(n+1)) return -inf;
    if (i == k or r == 2*(n+1)) return 0;

    double& d = dp[i][w][r];

    if (d != -1.0) return d;

    d = max({
        solve(i+1, w, r), 
        solve(i+1, w + peso[i], r+1) + v[i], 
        solve(i+1, w + 2*peso[i], r+2) + 2*v[i]
    });

    return d;
}

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);


    while (cin >> n >> x >> t >> k) {
        if (n == 0) break;

        limite = floor(double(x * (n + 1)) / 1.1 + 1e-6);

        for(int i = 0; i < k; i++){
            cin >> peso[i];

            int sum = 0, total = 0;
            for(int j = 0; j <= n; j++) {
                cin >> sum, total+=sum;
            }

            v[i] = (double)total/(n+1);
        }

        for (int i = 0; i < maxk; i++) {
            for (int j = 0; j < maxw; j++) {
                for (int l = 0; l < maxn*2; l++) {
                    dp[i][j][l] = -1.0;
                }
            }
        }
        limite -= t * (n+1);
        
        cout << setprecision(2) << fixed << solve(0, 0, 0) << '\n';
    }
}
