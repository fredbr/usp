#include <algorithm>
#include <array>
#include <iostream>
#include <string>

using namespace std;

int main() {
	ios_base::sync_with_stdio(false), cin.tie(nullptr);

    int n;
    cin >> n;

    string s;
    cin >> s;

    array<char, 10> subs;
    for (int i = 1; i < (int)subs.size(); i++) {
        cin >> subs[i];
    }

    auto beg = find_if(s.begin(), s.end(), 
        [&] (auto c) {
            return subs[c-'0'] > c;
        }
    );

    for (; beg != s.end(); ++beg) {
        auto c = *beg;
        if (subs[c-'0'] <= c) {
            break;
        }
        *beg = subs[c-'0'];
    }

    cout << s << '\n';
}
