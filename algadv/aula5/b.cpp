#include <iostream>
#include <vector>
#include <algorithm>

int main() {
    std::ios::sync_with_stdio(false), std::cin.tie(nullptr);

    int n;
    std::cin >> n;

    std::vector<int> v(n);
    for (auto& i : v) std::cin >> i;

    int q;
    std::cin >> q;

    while (q--) {
        int x;
        std::cin >> x;

        auto l = std::upper_bound(v.begin(), v.end(), x-1);
        auto r = std::upper_bound(v.begin(), v.end(), x);

        if (l == v.begin()) {
            std::cout << "X "; 
        }
        else {
            std::cout << *std::prev(l) << ' ';
        }

        if (r == v.end()) {
            std::cout << "X\n";
        }
        else {
            std::cout << *r << '\n';
        }
    }
}