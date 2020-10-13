#include <iostream>

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

int const mod = 1e9 + 7;

int const maxn = 30;

int v[maxn];
int s, n;
ii best;

void solve(int i, int sum, int mask) {
    if (i == n and sum <= s) {
        if (best.ff == sum) {
            if (__builtin_popcount(mask) >= __builtin_popcount(best.ss)){
                best =  ii{sum, mask};
            }
        }
        else { 
            best = max(best, ii{sum, mask});
        }
        return;
    }
    if (i >= n or sum > s) return;

    solve(i+1, sum, mask);
    solve(i+1, sum + v[i], mask | (1<<i));
}
int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);


    while (cin >> s >> n) {
        for (int i = 0; i < n; i++) cin >> v[i];
        
        best = ii{-1, -1};
        solve(0, 0, 0);
        
        int ans = best.ss;
        for (int i = 0; i < n; i++) {
            if (ans & (1<<i)) cout << v[i] << ' ';
        }
        cout << "sum:" << best.ff<<'\n';

    }
}
