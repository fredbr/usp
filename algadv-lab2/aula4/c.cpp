#include <array>
#include <cstring>
#include <iostream>
#include <queue>

#define all(x) begin(x), end(x)
#define clr(x, c) memset((x), (c), sizeof((x)))

using namespace std;

constexpr int maxn = 10;
constexpr int inf = 0x3f3f3f3f;

int ok[maxn][maxn][maxn][maxn];
int dist[maxn][maxn][maxn][maxn];

void clear() {
    clr(ok, 0);
}

int bfs(array<int, 4> orig, array<int, 4> dest) {
    clr(dist, 0x3f);
    dist[orig[0]][orig[1]][orig[2]][orig[3]] = 0;

    queue<array<int, 4>> q;
    q.push(orig);

    while (!q.empty()) {
        auto at = q.front();
        q.pop();

        int dd = dist[at[0]][at[1]][at[2]][at[3]];

        for (int i = -1; i < 2; i += 2) {
            for (int pos = 0; pos < 4; pos++) {
                auto x = at;
                x[pos] = (x[pos]+i+10)%10;

                if (ok[x[0]][x[1]][x[2]][x[3]]) continue;

                auto& d = dist[x[0]][x[1]][x[2]][x[3]];

                if (d > dd+1) {
                    d = dd+1;
                    q.push(x);
                }
            }
        }
    }

    return dist[dest[0]][dest[1]][dest[2]][dest[3]];
}
int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    int t;
    cin >> t;

    while (t--) {
        array<int, 4> orig, dest;
        for (int& i: orig) cin >> i;   
        for (int& i: dest) cin >> i;

        int n;
        cin >> n;

        while (n--) {
            int x, y, z, w;
            cin >> x >> y >> z >> w;

            ok[x][y][z][w] = 1;
        }

        int ans = bfs(orig, dest);

        if (ans == inf) cout << -1 << '\n';
        else cout << ans << '\n';

        if (t) clear();
    }   
}
