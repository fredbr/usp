#include <iostream>
#include <queue>
#include <utility>
#include <tuple>

using namespace std;

struct Event {
    int t, id;
    int p;

    bool operator<(Event const& rhs) const {
        return tie(t, id) > tie(rhs.t, rhs.id);
    }
};

int main() {
    string op;
    
    priority_queue<Event> q;

    while (true) {
        cin >> op;

        if (op == "#") break;

        int id, p;
        cin >> id >> p;

        q.push(Event{p, id, p});
    }

    int k;
    cin >> k;

    while (k--) {
        auto e = q.top();
        q.pop();

        cout << e.id << "\n";
        q.push(Event{e.t + e.p, e.id, e.p});
    }
}