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

ll lis(vector<int> const& v) {
    multiset<int> mt;

    for (int i : v) {
        auto it = mt.upper_bound(i);
        if (it != mt.end()) mt.erase(it);
        mt.insert(i);
    }

    return mt.size();
}

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    for (int t = 1; ; t++) {
        vector<int> v;
        while (true) {
            int x;
            cin >> x;

            if (x == -1) break;
            v.push_back(x);
        }

        if (v.empty()) break;
        
        
        reverse(v.begin(), v.end());

        if (t != 1) cout << '\n';
        cout << "Test #" <<t << ":\n";
        cout <<"  maximum possible interceptions: ";
        cout << lis(v) << "\n";
    }
}
