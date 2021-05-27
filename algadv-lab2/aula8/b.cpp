#include <bits/stdc++.h>

#define ff first
#define ss second

#define pb push_back
#define eb emplace_back
#define all(x) begin(x), end(x)
#define rall(x) rbegin(x), rend(x)
#define clr(x, c) memset((x), (c), sizeof((x)))

using namespace std;

using ll = long long;
using ii = pair<int, int>;

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    map<char, ii> matriz;
    int n;
    cin >> n;

    while (n--) {
        char a;
        int b, c;
        cin >> a >> b >> c;

        matriz.emplace(a, ii{b, c});
    }

    string s;
    while (cin >> s) {
        vector<ii> st;
        ll sum = 0;
        for (auto c : s) {
            if (c == '(') continue;
            else if (c == ')') {
                if (!st.empty()) {
                    ii a, b;
                    b = st.back();
                    st.pop_back();
                    a = st.back();
                    st.pop_back();

                    if (a.ss != b.ff) {
                        cout << "error\n";
                        sum = -1;
                        break;
                    }
                    else {
                        sum += (ll)a.ff*a.ss*b.ss;
                    }

                    st.emplace_back(a.ff, b.ss);
                }
            }
            else {
                st.pb(matriz[c]);
            }
        }
        if (sum != -1) cout << sum << '\n';
    }
}
