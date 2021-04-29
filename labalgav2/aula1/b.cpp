#include <vector>
#include <iostream>
#include <stack>

bool possible(int n, std::vector<int> const& v) {
    std::stack<int> st;

    auto it = v.begin();
    for (int i = 1; i <= n; i++) {
        st.push(i);

        while (it != v.end() and !st.empty() and *it == st.top()) {
            st.pop();
            ++it;
        }
    }

    return st.empty();
}

int main() {
    std::ios::sync_with_stdio(false);

    while (true) {
        int n;
        std::cin >> n;

        if (n == 0) break;

        while (true) {
            std::vector<int> v;
            for (int i = 0; i < n; i++) {
                int x;
                std::cin >> x;

                if (x == 0) break;
                v.push_back(x);
            }

            if (v.empty()) break;
        
            if (possible(n, v)) {
                std::cout << "Yes\n";
            }
            else {
                std::cout << "No\n";
            }
        } 

        std::cout << '\n';
    }
}