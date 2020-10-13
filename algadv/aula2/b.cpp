#include <iostream>
#include <vector>
#include <utility>
#include <algorithm>
#include <numeric>
#include <iomanip>

using namespace std;

int main() {
    int s;
    
    int t = 1;

    while (cin >> s) {
        int n;
        cin >> n;

        vector<int> v(2*s);
        for (int i = 0; i < n; i++) cin >> v[i];

        double avg = accumulate(v.begin(), v.end(), 0.0) / s;

        sort(v.begin(), v.end());
        
        cout << "Set #" << t << '\n';

        double ans = 0.0;
        for (int i = 0; i < s ; i++) {
            cout << ' ' << i << ":";

            if (v[i] != 0) cout << ' ' << v[i];
            if (v[(int)v.size() - i - 1] != 0) cout << ' ' << v[(int)v.size() - i - 1];

            ans += abs( v[i] + v[v.size()-i-1] - avg);

            cout << '\n';
        }

        cout << "IMBALANCE = " << setprecision(5) << fixed << ans << "\n\n";
        t++;
    }
}