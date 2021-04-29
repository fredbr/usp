#include <algorithm>
#include <iostream>
#include <set>
#include <vector>
#include <tuple>

#define ff first
#define ss second

#define all(x) begin(x), end(x)
#define rall(x) rbegin(x), rend(x)

using namespace std;

using ii = pair<int, int>;

int lis(vector<int> const& v) {
    multiset<int> st;
    for (auto i : v) {
        auto it = st.upper_bound(i);
        if (it != st.end()) st.erase(it);
        st.insert(i); 
    }
    return st.size();
}

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    int t;
    cin >> t;

    while (t--) {
        int n;
        cin >> n;

        vector<ii> v(n);
        for (auto& i : v) cin >> i.ff >> i.ss;

        sort(
            all(v),
            [] (auto i, auto j) {
                return tie(j.ff, i.ss) < tie(i.ff, j.ss);
            }
        );

        vector<int> v2(n);
        for (int i = 0; i < n; i++) v2[i] = v[i].ss;

        cout << lis(v2) << '\n';
    }
}
