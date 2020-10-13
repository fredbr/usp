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

seed_seq seq {
    (uint64_t) chrono::duration_cast<chrono::nanoseconds>(
    	chrono::high_resolution_clock::now().
    	time_since_epoch()).count(),
    (uint64_t) __builtin_ia32_rdtsc(),
    (uint64_t) random_device{}(),
    (uint64_t) 17
};

mt19937 rd{seq};

vector<vector<int>> solve(vector<int> v, int s) {
    int const n = v.size();

    vector<vector<int>> res;

    for (int i = 1; i < (1<<n); i++) {
        vector<int> sums;
        int sum = 0;
        for (int j = 0; j < n; j++) {
            if (i&(1<<j)) {
                sum += v[j];
                sums.pb(v[j]);
            }
        }

        sort(all(sums));

        if (sum == s) res.pb(sums); 
    }

    sort(all(res));
    res.erase(unique(all(res)), res.end());

    for (auto& i : res) reverse(all(i));
    sort(all(res), greater<vector<int>>{});

    return res;
}
int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    int s, n;

    while (cin >> s >> n) {
        if (max(s, n) == 0) break;

        vector<int> v(n);
        for (auto& i : v) cin >> i;

        auto ans = solve(v, s);

        cout << "Sums of " << s << ":\n";
        if (ans.empty()) {
            cout << "NONE\n";
        }
        else {
            for (auto& r : ans) {
                cout << r[0];

                for (int i = 1; i < (int)r.size(); i++) {
                    cout << "+" << r[i];
                }
                cout <<'\n';
            }
        }
    }
}
