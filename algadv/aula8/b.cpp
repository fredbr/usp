#include <vector>
#include <iostream>
#include <numeric>
#include <sstream>

#define pb push_back
#define all(x) begin(x), end(x)

using namespace std;

int const maxw = 202;

bool solve(vector<int> v) {
    vector<char> s(maxw);

    s[0] = true;

    for (auto i : v) {
        for (int j = maxw-1; j >= i; j--) {
            s[j] |= s[j-i];
        }
    }

    int sum = accumulate(all(v), 0);

    if (sum % 2 == 1) return false;
    
    return s[sum / 2];
}

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    int t;
    cin >> t;
    cin.ignore();

    while (t--) {
        vector<int> v;

        string s;
        getline(cin, s);

        istringstream ss(s);
        int d;
        while (ss >> d) {
            v.pb(d);
        }

        if (solve(v)) cout << "YES\n";
        else cout << "NO\n";
    }
}
