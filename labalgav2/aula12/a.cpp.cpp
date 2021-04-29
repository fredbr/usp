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

int const mod = 998244353;

seed_seq seq {
    (uint64_t) chrono::duration_cast<chrono::nanoseconds>(
    	chrono::high_resolution_clock::now().
    	time_since_epoch()).count(),
    (uint64_t) __builtin_ia32_rdtsc(),
    (uint64_t) random_device{}(),
    (uint64_t) 17
};

mt19937 rd{seq};

int mul(int a, int b) {
    return (ll)a*b%mod;
}

int fexp(int a, int b) {
    int ans = 1;
    while (b) {
        if (b&1) ans = mul(ans, a);
        a = mul(a, a);
        b /= 2;
    }
    return ans;
}

int inv(int x) {
    return fexp(x, mod-2);
}

int const maxn = 505050;
int fac[maxn];

void init() {
    fac[0] = 1;
    for (int i = 1; i < maxn; i++) fac[i] = mul(fac[i-1], i);
}

int ck(int n, int k) {
    if (k > n) return 0;
    return mul(fac[n], mul(inv(fac[n-k]), inv(fac[k])));
}

int add(int a, int b) {
    int x = a+ b;
    if (x < 0) x+= mod;
    if (x >= mod) x -= mod;
    return x;
}

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    init();

    int n, k;
    cin >> n >> k;

    int ans = 0;
    for (int i = 1; i <= n; i++) {
        ans = add(ans, ck(n/i - 1, k-1));
    }

    cout << ans << '\n';
}
