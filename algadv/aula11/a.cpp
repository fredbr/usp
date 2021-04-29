#include <cstdio>
#include <vector>

#define ff first
#define ss second

#define pb push_back
#define eb emplace_back
#define all(x) begin(x), end(x)
#define rall(x) rbegin(x), rend(x)
#define clr(x, c) memset((x), (c), sizeof((x)))

using namespace std;

int const maxn = 101;

int s[maxn];
int cnt[maxn][maxn];
vector<int> ans[maxn];

void init() {
    for (int i = 2; i < maxn; i++) {
        if (s[i] == 0) {
            for (int j = i; j < maxn; j += i) {
                s[j] = 1;
                cnt[j][i]++;
            } 
            for (int k = i*i; k < maxn; k *= i) {
                for (int j = k; j < maxn; j += k) {
                    cnt[j][i]++;
                }
            }
            s[i] = 0;
        }
    }

    for (int i = 3; i < maxn; i++) {
        for (int j = 0; j < maxn; j++) {
            cnt[i][j] += cnt[i-1][j];
        }
    }

    for (int i = 2; i < maxn; i++) {
        for (int j = 2; j < maxn; j++) {
            if (cnt[i][j]) {
                ans[i].pb(cnt[i][j]);
            }
        }
    }
}

int main() {
    init();

    while (true) {
        int x;
        scanf("%d", &x);

        if (x == 0) break;

        printf("%3d! =", x);
        int brk = 0;
        for (int j = 0; j < (int)ans[x].size(); j++) {
            int i = ans[x][j];
            printf("%3d", i);
            brk++;

            if (brk % 15 == 0 and j != (int)ans[x].size()-1) {
                brk = 0;
                printf("\n      ");
            }
        }
        printf("\n");
    }
}
