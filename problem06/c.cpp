#include <iostream>

using namespace std;

int sumofsq(int n) {
    int sum = 0;
    for (int i = 1; i <= n; i++) {
        sum += i * i;
    }
    return sum;
}

int sqofsum(int n) {
    int sum = 0;
    for (int i = 1; i <= n; i++) {
        sum += i;
    }
    return sum * sum;
}

uint abs(int n) {
    return (n >= 0) ? n : -n;
}

int main() {
    cout << abs(sumofsq(100) - sqofsum(100)) << endl;
    // cout << abs(sumofsq(10) - sqofsum(10)) << endl;
}