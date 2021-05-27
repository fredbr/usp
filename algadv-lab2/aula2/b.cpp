#include <iostream>

using namespace std;

int const maxn = 30;

int v[maxn][maxn];

int main() {
    ios::sync_with_stdio(false);

    int t;
    cin >> t;

    while (t--) {
        int n, m;
        cin >> n >> m;

        int ans = 0;
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < m; j++) {
                cin >> v[i][j];
            }
        }

        for (int dist = 0; dist < n+m-1; dist++) {
            if ((m+n) % 2 == 0 and dist == (n+m-2)/2) continue;
            int cnt[2] =  {};
            for (int i = 0, j = dist; i < n and j >= 0; i++, j--) {
                if (i >= n or j >= m) continue;
                cnt[v[i][j]]++;
            }

            for (int i = 0, j = n+m-dist-2; i < n and j >= 0; i++, j--) {
                if (i >= n or j >= m) continue;
                cnt[v[i][j]]++;
            }

            ans += min(cnt[0], cnt[1]);
        }

        cout << ans/2 << '\n';
    }
}