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

constexpr int maxn = 30001;

constexpr int coins[] = {
    1, 5, 10, 25, 50
};

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    vector<long long> dp(maxn);

    dp[0] = 1;

    for (int c : coins) {
        for (int i = maxn-1; i > 0; i--) {
            for (int amt = 1; amt * c <= i; amt++) {
                dp[i] += dp[i - amt*c];
            }
        }    
    }

    int x;
    while (cin >> x) {
        if (dp[x] == 1) {
            cout << "There is only 1 way to produce " << x << " cents change.\n";
        }
        else {
            cout << "There are " << dp[x] << " ways to produce " << x << " cents change.\n";
        }
    }
}
