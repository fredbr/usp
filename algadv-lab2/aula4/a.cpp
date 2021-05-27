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


int const maxn = 30;

int n;
char grid[maxn][maxn];

vector<string> ans;

int dx[] = {0, 1, 0, -1, 1, -1, 1, -1};
int dy[] = {1, 0, -1, 0, 1, -1, -1, 1};

bool valid(int x, int y) {
    return x >= 0 and x < n and y >= 0 and y < n;
}

void solve(int x, int y, string s = {}) {
    s += grid[x][y];
    if (s.size() >= 3)
        ans.pb(s);

    for (int i = 0; i < 8; i++) {
        int xx = x + dx[i];
        int yy = y + dy[i];

        if (!valid(xx, yy)) continue;

        if (grid[xx][yy] > s.back()) {
            solve(xx, yy, s);
        }
    }
}

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    int t;
    cin >> t;

    while (t--) {
        cin >> n;

        for (int i = 0; i < n; i++) cin >> grid[i];

        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                solve(i, j);
            }
        }

        sort(all(ans));
        ans.erase(unique(all(ans)), ans.end());

        sort(all(ans), [] (string& a, string& b) {
            if (a.size() == b.size()) return a < b;
            return a.size() < b.size();
        });

        for (auto& s : ans) cout << s << '\n';

        ans.clear();
        if (t) cout <<  '\n';
    }
}
