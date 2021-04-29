#include <algorithm>
#include <iostream>
#include <iomanip>
#include <map>
#include <vector>

int main() {
    std::ios::sync_with_stdio(false);

    int tests;
    std::cin >> tests;

    for (int t = 0; t < tests; t++) {
        int n;
        std::cin >> n;

        std::map<int, int> counts;
        std::vector<std::vector<int>> collections(n);

        for (auto& v : collections) {
            int m;
            std::cin >> m;

            for (int i = 0; i < m; i++) {
                int x;
                std::cin >> x;

                v.push_back(x);
            }

            std::sort(v.begin(), v.end());
            v.erase(std::unique(v.begin(), v.end()), v.end());

            for (auto x : v) {
                counts[x]++;
            }
        }

        int total = 0;
        for (auto i : counts) {
            if (i.second == 1) {
                total += 1;
            }
        }
        if (total == 0) total = 1;

        std::cout << "Case " << t+1 << ": ";
        std::cout << std::setprecision(6) << std::fixed;

        int i = 0;
        for (auto& v : collections) {
            int count = 0;
            for (auto i : v) {
                if (counts[i] == 1) {
                    count++;
                }
            }
            std::cout << 100.0*count/total << "%";

            if (i != n-1) std::cout << ' ';
            i++;
        }

        std::cout << '\n';
    }
}