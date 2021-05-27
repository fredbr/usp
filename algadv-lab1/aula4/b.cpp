#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

void solve(string rule, vector<string> const& dict, vector<string>& words, int idx = 0, string cur = {}) {
    if (idx == (int)rule.size()) {
        words.push_back(move(cur));
        return;
    }

    if (rule[idx] == '0') {
        for (char c = '0'; c <= '9'; c++) {
            solve(rule, dict, words, idx+1, cur + c);
        }
    }
    else {
        for (auto const& s : dict) {
            solve(rule, dict, words, idx+1, cur + s);
        }
    }
}

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    int n;
    while (cin >> n) {
        vector<string> dict(n);
        for (auto& i : dict) cin >> i;

        int m;
        cin >> m;

        cout << "--\n";
        while (m--) {
            string rule;
            cin >> rule;

            int numwords = 1;
            for (auto c : rule) {
                if (c == '0') numwords *= 10;
                else numwords *= n;
            }

            vector<string> words;
            words.reserve(numwords);

            solve(rule, dict, words);

            for (auto const& s : words) {
                cout << s << '\n';
            }
        }
    }
}
