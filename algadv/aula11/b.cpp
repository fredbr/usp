#include <iostream>
#include <vector>
#include <utility>

using namespace std;

using ii = pair<int, int>;
using ll = long long;

vector<int> primes;

int const maxsqrt = 1<<16;

char s[maxsqrt];

void init() {
    for (int i = 2; i*i < maxsqrt; i++) {
        if (s[i] == 0) {
            for (int j = i*i; j < maxsqrt; j += i) {
                s[j] = 1;
            }
        }
    }

    for (int i = 2; i < maxsqrt; i++) {
        if (s[i] == 0) {
            primes.push_back(i);
        }
    }
}

vector<ii> factor(int x) {
    vector<ii> ans;

    for (int i : primes) {
        if (i*i > x) break;

        if (x % i == 0) {
            ans.emplace_back(i, 1);
            x /= i;
            while (x % i == 0) {
                ans.back().second++;
                x /= i;
            }
        }
    }

    if (x != 1) {
        ans.emplace_back(x, 1);
    }

    return ans;
}

ll cnt_fac(int x, int n) {
    ll ans = 0;
    while (n) {
        ans += n/x;
        n /= x;
    }
    return ans;
}

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    init();

    int n, x;
    while (cin >> n >> x) {
        bool ok = true;
        
        if (x != 0) {
            auto factors = factor(x);

            for (auto i : factors) {
                if (cnt_fac(i.first, n) < i.second) {
                    ok = false;
                    break;
                }
            }
        }
        else {
            ok = false;
        }

        cout << x << ' ';
        if (ok) cout << "divides ";
        else cout << "does not divide ";
        cout << n << "!\n";
    }
}
