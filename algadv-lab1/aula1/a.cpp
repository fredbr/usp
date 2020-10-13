#include <algorithm>
#include <iostream>
#include <map>
#include <string>

int main() {
    std::ios::sync_with_stdio(false);

    int tests;
    std::cin >> tests;

    for (int t = 0; t < tests; t++) {
        std::map<char, int> cost;
        
        int k;
        std::cin >> k;

        for (int i = 0; i < k; i++) {
            char c;
            int val;

            std::cin >> c >> val;

            cost[c] = val;
        }

        int m;
        std::cin >> m;

        long long total = 0;

        std::cin.ignore();
        for (int i = 0; i < m; i++) {
            std::string s;
            std::getline(std::cin, s);

            for (auto a : s) {
                total += cost[a];
            }
        }

        std::cout << total/100 << '.' << (total%100)/10 << total%10 << "$\n";
    }
}