#include <iostream>
#include <string>
#include <queue>

enum class Position {
    LEFT,
    RIGHT,
};

int main() {
    std::ios::sync_with_stdio(false);
    
    int tests;
    std::cin >> tests;

    for (int t = 0; t < tests; t++) {
        int l, n;
        std::cin >> l >> n;

        l *= 100;

        std::queue<int> left, right;

        for (int i = 0; i < n; i++) {
            int x;
            std::string pos;

            std::cin >> x >> pos;

            if (pos == "left") {
                left.push(x);
            }
            else {
                right.push(x);
            }
        }

        Position atual = Position::LEFT;

        int r = 0;
        while (!left.empty() or !right.empty()) {
            auto& q = atual == Position::LEFT? left : right;

            int len = 0;
            while (!q.empty() and q.front() + len <= l) {
                len += q.front();
                q.pop();
            }

            atual = atual == Position::LEFT? Position::RIGHT : Position::LEFT;
            r++;
        }

        std::cout << r << '\n';
    }
}