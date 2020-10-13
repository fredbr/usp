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

bool possible(vector<int> const& v, int c, int t) {
    int tot = 0;
    for (int i : v) {
        if (i > t) return false;
        if (tot + i > t) {
            c--;
            tot = i;
        }
        else {
            tot += i;
        }
    }

    return c > 0;
}

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    int n, c, t;
    cin >> n >> c >> t;

    vector<int> v(n);
    for (auto& i : v) cin >> i;

    int l = 0, r = inf;

    while (r-l > 1) {
        int m = (l+r)/2;

        if (!possible(v, c, m)) l = m;
        else r = m;
    }    

    cout << (ll)(r+t-1)/t << "\n";
}
