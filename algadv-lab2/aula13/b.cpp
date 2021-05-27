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

int const maxn = 101010;

int tree[maxn*4];
int v[maxn], p[maxn];

void build(int no, int l, int r) {
    if (l == r) {
        tree[no] = p[l];
        return;
    }

    int m = (l+r)/2;

    build(no*2+1, l, m);
    build(no*2+2, m+1, r);

    tree[no] = max(tree[no*2+1], tree[no*2+2]);
}

int get(int no, int l, int r, int a, int b) {
    if (a <= l and r <= b) return tree[no];

    int m = (l+r)/2;

    if (b <= m) return get(no*2+1, l, m, a, b);
    else if (a > m) return get(no*2+2, m+1, r, a, b);

    return max(get(no*2+1, l, m, a, b), get(no*2+2, m+1, r, a, b));
}

void solve(int n, int q) {
    for (int i = 1; i <= n; i++) cin >> v[i];
    for (int i = 1; i <= n; i++) {
        if (v[i] != v[i-1]) {
            p[i] = 1;
        }
        else p[i] = p[i-1] + 1;
    }

    build(0, 1, n);

    while (q--) {
        int l, r;
        cin >> l >> r;

        int nl = upper_bound(v+1, v+n+1, v[l]) - v;

        if (nl > r) cout << r-l+1 << '\n';
        else {
            cout << max(nl - l, get(0, 1, n, nl, r)) << '\n';
        }
    }
}

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    while (true) {
        int n, q;
        cin >> n;

        if (n == 0) break;
        cin >> q;

        solve(n, q);
    }
}
