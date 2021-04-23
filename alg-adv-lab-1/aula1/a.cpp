#include <algorithm>
#include <iostream>
#include <vector>
#include <string>

struct Tripulante {
    std::string name;

    enum class Type {
        rat,
        woman_children,
        man,
        captain
    } type;

    bool operator<(Tripulante const& rhs) const {
        return static_cast<int>(type) < static_cast<int>(rhs.type);
    }
};

int main() {
    int n;
    std::cin >> n;

    std::vector<Tripulante> v(n);

    for (auto& i : v) {
        std::cin >> i.name;

        std::string type;
        std::cin >> type;

        if (type == "rat") i.type = Tripulante::Type::rat;
        else if (type == "man") i.type = Tripulante::Type::man;
        else if (type == "captain") i.type = Tripulante::Type::captain;
        else i.type = Tripulante::Type::woman_children;
    }

    std::stable_sort(v.begin(), v.end());
    for (auto i : v) {
        std::cout << i.name << "\n";
    }
}