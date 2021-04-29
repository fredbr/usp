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

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    int n;
    cin >> n;

    map<int, int> mp;
    map<int, vector<int>> pos;

    for (int i = 1; i <= n; i++) {
        int x;
        cin >> x;

        pos[x].push_back(i);

        if (mp[x-1] + 1 >= mp[x]) {
            mp[x] = mp[x-1] + 1;
        }
    }

    ii best = {0, 0};
    for (auto i : mp) {
        best = max(best, ii{i.second, i.first});
    }

    cout << best.first << '\n';

    vector<int> res;
    int maior = inf;

    for (int i = best.second; i >= best.second-best.first+1; i--) {
        auto it = lower_bound(all(pos[i]), maior);
        --it;

        res.pb(*it);
        maior = *it;
    }
    
    reverse(all(res));

    for (int i : res) cout << i << ' ';

    cout << '\n';
}
