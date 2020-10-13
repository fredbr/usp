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

int const maxn = 101;

string const s = "ALLIZZWELL";

int dx[] = {0, -1, -1, -1,  0,  1, 1, 1};
int dy[] = {1,  1,  0, -1, -1, -1, 0, 1};

int n, m;
char mat[maxn][maxn];
char vis[maxn][maxn];

bool solve(int x, int y, int c) {
    // cout << x << ' ' << y << ' ' << c << '\n';
    if (c == 10) return true;

    vis[x][y] = 1;

    bool d = false;

    for (int i = 0; i < 8 and d == 0; i++) {
        int xx = x + dx[i];
        int yy = y + dy[i];

        if (xx < 0 or xx >= n or yy < 0 or yy >= m) continue;
        if (vis[xx][yy] or mat[xx][yy] != s[c]) continue;

        d |= solve(xx, yy, c+1);
    }

    vis[x][y] = 0;

    return d;
}
int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    int t;
    cin >> t;

    while (t--) {
        cin >>  n >> m;

        for (int i = 0; i < n; i++) cin >> mat[i];

        bool ok = false;

        for (int i = 0; i < n; i++) {
            for (int j = 0; j <m and !ok; j++) {
                if (mat[i][j] == 'A') {
                    ok |= solve(i, j, 1);
                }
            }
        }

        if (ok) cout << "YES\n";
        else cout << "NO\n";
    }
}
