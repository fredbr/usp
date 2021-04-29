#include <algorithm>
#include <iostream>
#include <vector>
#include <type_traits>

template<typename Iter>
long long inversions(Iter beg, Iter end) {
    using T = typename std::decay<decltype(*beg)>::type;

    size_t n = end - beg;

    if (n == 1) return 0ll;

    Iter mid = beg + n/2;

    long long ans = inversions(beg, mid) + inversions(mid, end);

    auto i = beg, j = mid;    
    size_t l_cnt = n/2;

    std::vector<T> tmp;
    tmp.reserve(n);

    while (i != mid and j != end) {
        if (*i <= *j) {
            tmp.push_back(std::move(*i));
            ++i;
            l_cnt--;
        }
        else {
            tmp.push_back(std::move(*j));
            ++j;
            ans += l_cnt;
        }
    }

    ans += l_cnt * (end-j);

    std::move(i, mid, std::back_inserter(tmp));
    std::move(j, end, std::back_inserter(tmp));

    std::move(tmp.begin(), tmp.end(), beg);

    return ans;
}

int main() {
	std::ios_base::sync_with_stdio(false), std::cin.tie(nullptr);

    int t;
    std::cin >> t;

    while (t--) {
        int n;
        std::cin >> n;

        std::vector<int> v(n);
        for (auto& i: v) std::cin >> i;
    
        std::cout << inversions(v.begin(), v.end()) << '\n';
    }
}
