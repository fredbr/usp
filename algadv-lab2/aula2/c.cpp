#include <iostream>
#include <vector>
#include <numeric>
#include <algorithm>

using namespace std;

int main() {
    ios::sync_with_stdio(false), cin.tie(nullptr);

    int n, k;
    cin >> n >> k;

    vector<int> alice, bob, both;

    for (int i = 0; i < n; i++) {
        int x, a, b;

        cin >> x >> a >> b;

        if (a == 1 and b == 1) both.push_back(x);
        if (a == 0 and b == 1) bob.push_back(x);
        if (a == 1 and b == 0) alice.push_back(x);
    }

    sort(alice.begin(), alice.end());
    sort(bob.begin(), bob.end());

    for (int i = 0; i < (int)min(alice.size(), bob.size()); i++) {
        both.push_back(alice[i] + bob[i]);
    }

    sort(both.begin(), both.end());

    if ((int)both.size() < k) cout << -1 << '\n';
    else cout << accumulate(both.begin(), both.begin() + k, 0ll) << '\n';
}