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

string solve(string const& s) {
    int const n = s.size();

    if (n % 2 == 1) {
        return s;
    }

    auto s1 = solve(s.substr(0, n/2));
    auto s2 = solve(s.substr(n/2, n));

    if (s1 < s2) return s1 + s2;
    else return s2 + s1;
}

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    string s, t;
    cin >> s >> t;

    if (solve(s) == solve(t)) cout << "YES\n";
    else cout << "NO\n";
}
