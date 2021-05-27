#include <iostream>
#include <vector>

using namespace std;

using ll = long long;

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    int n;
    cin >> n;

    vector<int> cnt((n + 1)*2);
    for (int i = 0; i < n; i++) {
        int x;
        cin >> x;

        cnt[x]++;
    }

    ll ans = 0;
    ll carry = 0;
    for (int i = 1; i < (int)cnt.size(); i++) {
        if (carry != 0) {
            cnt[i] += carry;
            ans += carry;
            carry = 0;
        }
        if (cnt[i] > 1) {
            carry += cnt[i] - 1;
        }
    }

    cout << ans << '\n';
}
