#include <iostream>
#include <vector>
#include <string>

#define ff first
#define ss second

#define pb push_back
#define eb emplace_back
#define all(x) begin(x), end(x)
#define rall(x) rbegin(x), rend(x)
#define clr(x, c) memset((x), (c), sizeof((x)))

using namespace std;

using ll = long long;

vector<int> pre(string const& s) {
    int const n = s.size();
    vector<int> pi(n);
    for (int i = 1; i < n; i++) {
        int j = pi[i-1];

        while (j and s[i] != s[j]) {
            j = pi[j-1];
        }

        if (s[i] == s[j]) {
            j++;
        }
        pi[i] = j;
    }
    return pi;
}

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    int t;
    cin >> t;

    while (t--) {
        string haystack, needle;
        cin >> haystack >> needle;

        int n = needle.size();
        needle += "#";
        needle += haystack;

        auto x = pre(needle);
        vector<int> ans;
        for (int i = n+1; i < (int)x.size(); i++) {
            if (x[i] == n) {
                ans.push_back(i-n-n+1);
            }
        }

        if (!ans.empty()) {
            cout << ans.size() << '\n';
            for (auto i : ans) cout << i << ' ';
            cout << '\n';
        }
        else cout << "Not Found\n";
        cout << '\n';
    }
}
