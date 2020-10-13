#include <algorithm>
#include <array>
#include <iostream>
#include <queue>
#include <unordered_map>
#include <tuple>
#include <set>

constexpr int game_size = 3;

using Game = std::array<int, game_size * game_size>;

namespace std {
    template<>
    struct hash<Game> {
        size_t operator()(Game const& g) const {
            size_t r = 0;
            for (auto i : g) {
                r = r*(game_size*game_size+1) + i + 1;
            }
            return r;
        }
    };
}

bool is_possible(Game const& g) {
    int inversions = 0;
    for (int i = 1; i < game_size*game_size; i++) {
        for (int j = 0; j < i; j++) {
            if (g[j] > g[i]) {
                inversions ^= 1;
            }
        }
    }

    int pos = std::find(g.begin(), g.end(), 0) - g.begin();

    int distance = (game_size - 1 - pos%3) + (game_size - 1 - pos/3);
    distance %= 2;

    return inversions == distance;
}

bool is_finished(Game const& g) {
    for (int i = 0; i < game_size*game_size; i++) {
        if (g[i] != (i+1) % (game_size*game_size)) {
            return false;
        }
    }
    return true;
}

int heuristic(Game const& g) {
    int h = 0;
    for (int i = 0; i < game_size*game_size; i++) {
        int pos = std::find(g.begin(), g.end(), i) - g.begin();

        int x = pos % game_size;
        int y = pos / game_size;

        int ti = (i - 1 + game_size*game_size) % (game_size*game_size);

        int final_x = ti % game_size;
        int final_y = ti / game_size;

        h += abs(x - final_x) + abs(y - final_y);
    }
    return h/2;
}

constexpr std::pair<int, char> moves[] = {
    {-game_size, 'u'},
    {-1        , 'l'},
    {+game_size, 'd'},
    {+1        , 'r'},
};

void print_game(Game const& g) {
    int i = 0;
    for (auto j : g) {
        std::cout << j << ' ';
        i = (i +1) % game_size;
        if (i == 0) std::cout << '\n';
    }
}

struct Distance {
    int d, h;

    bool operator>(Distance const& rhs) const {
        return d+h > rhs.d+rhs.h;
    }
    bool operator<(Distance const& rhs) const {
        return d+h < rhs.d+rhs.h;
    }
};

std::string solve(Game const& g) {
    if (!is_possible(g)) {
        return "unsolvable";
    }

    using DistMap = std::unordered_map<Game, std::pair<int, std::string>>;

    using Queue = std::priority_queue<
        std::pair<Distance, Game>,                              
        std::vector<std::pair<Distance, Game>>,
        std::greater<std::pair<Distance, Game>>
    >;

    DistMap dist;

    dist[g] = {0, ""};

    Queue q;
    q.emplace(Distance{0, heuristic(g)}, g);

    while (!q.empty()) {
        auto at = q.top();
        auto at_dist = dist[at.second];

        q.pop();

        if (is_finished(at.second)) {
            return at_dist.second;
        }

        int pos0 = std::find(at.second.begin(), at.second.end(), 0) - at.second.begin();

        for (auto&& i : moves) {
            int shift;
            char c;
            std::tie(shift, c) = i;

            int npos0 = pos0 + shift;
            
            if (npos0 < 0 or npos0 >= game_size*game_size) continue;
            if (pos0 % game_size == game_size - 1 and shift == 1) continue;
            if (pos0 % game_size == 0 and shift == -1) continue;

            auto ngame = at.second;
            std::swap(ngame[pos0], ngame[npos0]);

            if (dist.count(ngame)) continue;

            dist[ngame] = {at_dist.first + 1, at_dist.second + c};
            q.emplace(Distance{at_dist.first + 1, heuristic(ngame)}, ngame);
        }
    }

    return "unsolvable";
}

int main() {
    int t;
    std::cin >> t;

    while (t--) {
        Game g;

        for (auto& i : g) {
            std::string s;
            std::cin >> s;

            if (s.front() == 'x') i = 0;
            else i = std::stoi(s);
        }

        std::cout << solve(g) << "\n";

        if (t) std::cout << '\n';
    }
}