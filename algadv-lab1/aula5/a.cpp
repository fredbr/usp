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

int const mod = 1e9 + 7;

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    int n, a, b;
    cin >> n >> a >> b;

    int ans = 0;

    for (int i = 1; i < n; i++) {
        int na = a/i;
        int nb = b / (n-i);

        ans = max(ans, min(na, nb));
    }    

    cout << ans << '\n';
}
