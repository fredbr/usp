#include <iostream>
#include <stack>
#include <string>

using namespace std;

int main() {
    ios::sync_with_stdio(false), cin.tie(nullptr);

    string s;
    cin >> s;

    stack<char> last;
    for (auto c : s) {
        if (!last.empty() and last.top() == c) {
            last.pop();
        }
        else {
            last.push(c);
        }
    }

    s.resize(last.size());
    for (auto it = s.rbegin(); !last.empty(); ++it) {
        *it = last.top();
        last.pop();
    }

    cout << s << "\n";
}