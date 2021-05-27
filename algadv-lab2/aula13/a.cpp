#include <iostream>

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
int v[maxn];

int op(int x, int y) {
    return x * y;
}

void upd(int no, int l, int r, int p, int x) {
    if (l == r) {
        tree[no] = x;
        return;
    }

    int m = (l+r) / 2;

    if (p <= m) upd(no*2+1, l, m, p, x);
    else upd(no*2+2, m+1, r, p, x);

    tree[no] = op(tree[no*2+1], tree[no*2+2]);
}

int get(int no, int l, int r, int a, int b) {
    if (a <= l and r <= b) return tree[no];
    if (a > r or b < l) return 1;
    int m = (l+r)/2;
    return op(get(no*2+1, l, m, a, b), get(no*2+2, m+1, r, a, b));
}

void build(int no, int l, int r) {
    if (l == r) tree[no] = v[l];
    else {
        int m = (l+r)/2;
        build(no*2+1, l, m);
        build(no*2+2, m+1, r);

        tree[no] = op(tree[no*2+1], tree[no*2+2]);
    }
}

void solve(int n, int q) {
    for (int i = 1; i <= n; i++) {
        cin >> v[i];

        if (v[i] < 0) v[i] = -1;
        else if (v[i] > 0) v[i] = 1;
    }

    build(0, 1, n);

    while (q--) {
        char op;
        cin >> op;

        if (op == 'C') {
            int p, x;
            cin >> p >> x;

            if (x < 0) x = -1;
            if (x > 0) x = 1;

            upd(0, 1, n, p, x);
        }
        else {
            int a, b;
            cin >> a >> b;

            int r = get(0, 1, n, a, b);

            if (r < 0) cout << '-';
            if (r == 0) cout << '0';
            if (r > 0) cout << '+';
        }
    }
    cout << '\n';
}

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    int n, q;
    while (cin >> n >> q) solve(n, q);
}
