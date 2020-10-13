#include <iostream>
#include <vector>

using namespace std;

int main() {
    ios::sync_with_stdio(false), cin.tie(nullptr);

    int t;
    cin >> t;

    while (t--) {
        int n;
        cin >> n;

        vector<int> v(2*n), cnt(n+1);

        for (int i = 0; i < 2*n; i++) {
            int x;
            cin >> x;

            cnt[x]++;

            if (cnt[x] == 1) cout << x << ' ';
        }

        cout << '\n';
    }
}