#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

void solve(vector<vector<int>>& res, int x, vector<int> const& vals, vector<int> used = {}, int idx = 0) {
    if (x == 0) {
        res.push_back(move(used));
        return;
    }
    if (idx >= (int)vals.size()) {
        return;
    }

    solve(res, x, vals, used, idx+1);
    
    if (x - vals[idx] >= 0) {
        used.push_back(vals[idx]);
        solve(res, x - vals[idx], vals, used, idx +1);
    }
}

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    while (true) {
        int x, n;
        cin >> x >> n;

        if (x == 0 and n == 0) break;

        vector<int> vals(n);
        for (auto& i : vals) {
            cin >> i;
        }
        sort(vals.rbegin(), vals.rend());

        vector<vector<int>> res;
    
        solve(res, x, vals);

        cout << "Sums of " << x << ":\n";
        if (res.empty()) {
            cout << "NONE\n";
        }
        else {
            sort(res.begin(), res.end());
            res.erase(unique(res.begin(), res.end()), res.end());
            reverse(res.begin(), res.end());
            
            for (auto const& v : res) {
                for (int i = 0; i < (int)v.size(); i++) {
                    cout << v[i];

                    if (i < (int)v.size() - 1) {
                        cout << "+";
                    }
                    else cout << '\n';
                }
            }
        }            
    }
}
