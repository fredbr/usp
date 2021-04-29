#include <iostream>
#include <set>
#include <vector>

using namespace std;

int lis(vector<int> const& v) {
    set<int> st;

    for (auto i : v) {
        auto it = st.lower_bound(i);

        if (it != st.end()) st.erase(it);

        st.insert(i);        
    }
    return st.size();
}

void solve(int n, vector<int> a, vector<int> b) {
    vector<int> inv(n);

    for (int i = 0; i < n; i++) {
        inv[a[i]] = i;
    }

    for (auto& i : b) i = inv[i];

    cout << 2*(n-lis(b)) <<'\n';
}

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    int t;
    cin >> t;

    for (int i = 1; i <= t; i++)  {
        int n;
        cin >> n;

        vector<int> a(n), b(n);
        for (auto& i: a) cin >> i, i--;
        for (auto& i: b) cin >> i, i--;

        cout << "Case " << i << ": ";
        solve(n, a, b);
    }
}
