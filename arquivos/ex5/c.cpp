#include <bits/stdc++.h>

using namespace std;

int const inf = 0x3f3f3f3f;

struct Seg {
    Seg() = default;

    Seg(vector<vector<int>> const& v) : n(v.size()), tree(n*4) {
        build(v, 1, 0, n-1);
    };
    array<int, 10> get(int a, int b) {
        return get(1, 0, n-1, a, b).best;
    }

private:

    struct Node {
        array<int, 10> best;

        Node() {};
        
        Node(vector<int> const& v) {
            for (int i = 0; i < min(10, (int)v.size()); i++) {
                best[i] = v[i];
            }
            for (int i = (int)v.size(); i < 10; i++) {
                best[i] = inf;
            }
        }

        static Node join(Node const& lhs, Node const& rhs) {
            Node ans;

            auto r = ans.best.begin();
            auto i = lhs.best.begin();
            auto j = rhs.best.begin();

            while (r != ans.best.end()) {
                if (*i < *j) *(r++) = *(i++);
                else *(r++) = *(j++);
            }
            return ans;
        }
    };

    int n;
    vector<Node> tree;

    void build(vector<vector<int>> const& v, int no, int l, int r) {
        if (l == r) {
            tree[no] = Node(v);
            return;
        }

        int m = (l+r)/2;

        build(v, no*2, l, m);
        build(v, no*2, m+1, r);

        tree[no] = Node::join(tree[no*2], tree[no*2+1]);
    }

    Node get(int no, int l, int r, int a, int b) {
        if (a <= l and r <= b) {
            return tree[no];
        }
        int m = (l+r)/2;

        if (b <= m) return get(no*2, l, m, a, b);
        if (a > m) return get(no*2+1, m+1, r, a, b);

        return Node::join(
            get(no*2, l, m, a, b),
            get(no*2+1, m+1, r, a, b)
        );
    }
};

struct HLD {
    HLD(vector<vector<int>> const& v, vector<vector<int>> const& people) : 
            n(v.size()), v(v), people(n),W
            par(n), d(n), heav(n, -1), 
            head(n), pos(n), cur_pos(0) {
        dfs(0);
        decompose(0, 0);

    }

    int lca(int a, int b) {
        for (; head[a] != head[b]; b = par[head[b]]) {
            if (d[head[a]] > d[head[b]]) {
                swap(a, b);
            }
        }
        if (d[a] > d[b]) {
            return b;
        }
        else return a;
    }

    int max_path(int a, int b) {
        int res = 0;
        for (; head[a] != head[b]; b = par[head[b]]) {
            if (d[head[a]] > d[head[b]]) {
                swap(a, b);
            }

            res = max(res, seg.get(pos[head[b]], pos[b]));
        }
        if (d[a] > d[b]) {
            swap(a, b);
        }
        res = max(res, seg.get(pos[a], pos[b]));
        return res;
    }

    void upd(int x, int val) {
        seg.upd(pos[x], val);
    }

private:
    int n;
    vector<vector<int>> const& v;
    vector<vector<int>> people;
    Seg seg;
    vector<int> par, d, heav, head, pos;
    int cur_pos;

    int dfs(int x, int p = -1) {
        int sz = 1;
        int max_c_size = 0;

        for (int u : v[x]) {
            if (u == p) continue;

            par[u] = x;
            d[u] = d[x] + 1;
            
            int c_size = dfs(u, x);
            sz += c_size;

            if (c_size > max_c_size) {
                max_c_size = c_size;
                heav[x] = u;
            }
        }

        return sz;
    } 

    void decompose(vector<vector<int>> const& val, int x, int h) {
        head[x] = h;
        pos[x] = cur_pos++;

        people[pos[x]] = val[x];

        if (heav[x] != -1) {
            decompose(val, heav[x], h);
        }

        for (int u : v[x]) {
            if (u == par[x] or u == heav[x]) continue;
            decompose(val, u, u);
        }
    }
};


int main() {

}