#include <algorithm>
#include <iostream>
#include <vector>
#include <queue>

using namespace std;

vector<vector<int>> make_ranking(vector<vector<int>> const woman_prefs) {
    int const n = woman_prefs.size();

    auto ranking = vector<vector<int>>(n, vector<int>(n));

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            ranking[i][woman_prefs[i][j]] = j;
        }
    }

    return ranking;
}

vector<pair<int, int>> stable_matching(
    vector<vector<int>> const& men_pref,
    vector<vector<int>> const& woman_pref
) {
    int const n = men_pref.size();

    auto const ranking = make_ranking(woman_pref);

    vector<int> next_woman(n), matches(n, -1);

    // initially all man and woman are free
    queue<int> free_men;
    for (int i = 0; i < n; i++) free_men.push(i);

    while (!free_men.empty()) {
        int cur_man = free_men.front();
        free_men.pop();

        int cur_woman = men_pref[cur_man][next_woman[cur_man]];

        // if the current woman hasnt matched up with anyone
        if (matches[cur_woman] == -1) {
            matches[cur_woman] = cur_man;
        }
        // if the current man is better then the last man
        else if (ranking[cur_woman][cur_man] < ranking[cur_woman][matches[cur_woman]]) {
            int last_man = matches[cur_woman];

            matches[cur_woman] = cur_man;
            free_men.push(last_man);
        }
        // else push the current man back into the queue
        else {
            free_men.push(cur_man);
        }

        next_woman[cur_man]++;
    }

    vector<pair<int, int>> answer;

    for (int i = 0; i < n; i++) {
        answer.emplace_back(matches[i], i);
    }

    sort(answer.begin(), answer.end());

    return answer;
}

int main() {
    int t;
    cin >> t;

    for (int test = 0; test < t; test++) {
        int n;
        cin >> n;

        vector<vector<int>> men_prefs(n, vector<int>(n)), woman_prefs(n, vector<int>(n));

        for (int i = 0; i < n; i++) {
            int at;
            cin >> at;

            for (auto& j : woman_prefs[at-1]) {
                cin >> j;
                j--;
            }
        }

        for (int i = 0; i < n; i++) {
            int at;
            cin >> at;

            for (auto& j : men_prefs[at-1]) {
                cin >> j;
                j--;
            }
        }

        auto ans = stable_matching(men_prefs, woman_prefs);

        for (auto i : ans) {
            cout << i.first+1 << ' ' << i.second+1 << '\n';
        }
    }
}