#include <iostream>
#include <string>
#include <map>

using namespace std;

int main() {
    int n, m;
    cin >> n >> m;

    map<string, string> servers;

    while (n--) {
        string name, ip;
        cin >> name >> ip;

        servers[ip] = name;
    }

    while (m--) {
        string command, ip;
        cin >> command >> ip;

        cout << command << " " << ip << " #" << servers[ip.substr(0, ip.size()-1)] << "\n";
    }
}