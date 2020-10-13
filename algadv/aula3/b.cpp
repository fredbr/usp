#include <iostream>
#include <algorithm>

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

int const maxn = 11;

int n;
int maze[maxn][maxn];
int vis[maxn][maxn];
int cnt;

int dx[] = {0, -1, 0, 1};
int dy[] = {1, 0, -1, 0};

void solve(int x, int y) {
    if (min(x, y) == n-1) return (void)cnt++;

    vis[x][y] = 1;

    for (int i = 0; i < 4; i++) {
        int xx = x + dx[i];
        int yy = y + dy[i];

        if (xx < 0 or xx >= n or yy < 0 or yy >= n) continue;
        if (vis[xx][yy] or maze[xx][yy]) continue;

        solve(xx, yy);
    } 

    vis[x][y] = 0;
}

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    cin >> n;

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            cin >> maze[i][j];
        }
    }

    if (maze[0][0] == 0) solve(0, 0);

    cout << cnt << '\n';
}
