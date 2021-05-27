#include <bits/stdc++.h>

#define ff first
#define ss second

#define pb push_back
#define eb emplace_back
#define all(x) begin(x), end(x)
#define rall(x) rbegin(x), rend(x)
#define clr(x, c) memset((x), (c), sizeof((x)))

using namespace std;

template<class T> void DBG(T&& x) { cerr << x << " "; }
template<class T, class...Args> void DBG(T&& x, Args&&... args) { DBG(x); DBG(args...); }
#define DBG(...) cerr << "[" << #__VA_ARGS__ << "]: "; DBG(__VA_ARGS__); cerr << endl 

using ll = long long;
using ii = pair<int, int>;

template<typename T = int>
constexpr T inf = 0x3f3f3f3f3f;

template<>
constexpr ll inf<ll> = 0x3f3f3f3f3f3f3f3f;

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

int const maxn = 202;

vector<int> calc(int a, int b) {
    vector<int> v(a*b);
    for (int i = 0; i < a*b; i++) v[i] = (i % a) % b;
    return v;
}

void solve(int a, int b) {
    int bk = a*b;
    auto ra = calc(a, b), rb = calc(b, a);

    vector<int> pre(bk);
    pre[0] = ra[0] == rb[0];
    for (int i = 1; i < bk; i++) pre[i] = pre[i-1] + (ra[i] == rb[i]);

    ll cnt = pre.back();

    int q;
    cin >> q;

    while (q--) {
        ll l, r;
        cin >> l >> r;

        ll lbk = l / bk;
        ll rbk = r / bk;

        ll ans = max(rbk - lbk -1, 0ll) * cnt;
        if (lbk == rbk) {
            ans += pre[r % bk] - (l%bk? pre[l%bk-1] : 0);
        }
        else {
            ans += pre[r % bk];
            
            if (l % bk) ans += cnt - pre[l % bk-1]; 
            else ans += cnt;
        }

        cout << r-l+1-ans << ' ';
    }
    cout << '\n';
}

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    int t;
    cin >> t;

    while (t--) {
        int a, b;
        cin >> a >> b;

        solve(a, b);
    }
}
