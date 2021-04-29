#include <iostream>
#include <string>
#include <vector>

using namespace std;

vector<int> prefix_function(string s) {
    int n = (int)s.length();
    vector<int> pi(n);
    for (int i = 1; i < n; i++) {
        int j = pi[i-1];
        while (j > 0 && s[i] != s[j])
            j = pi[j-1];
        if (s[i] == s[j])
            j++;
        pi[i] = j;
    }
    return pi;
}

int main() {
    string s, t;
    getline(cin, s);
    getline(cin, t);
    
    // int n = s.size();
    int m = t.size();

    t += "$";
    t += s;

    auto v = prefix_function(t);

    for (int i = m+1; i < (int)v.size(); i++) {
        // cout << v[i] << ' ';
        if (v[i] == m-1) {
            cout << "O padrao foi encontrado na posicao ";
            cout << i-2*m+1 << '\n';
        }
    }
}