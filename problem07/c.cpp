#include <iostream>
#include <cmath>
#include <ctime>

using namespace std;

bool isPrime(int n) {
    if (n == 2) return true;
    for (int i = 2; i < sqrt(n)+1; i++) {
        if (n % i == 0) return false;
    }
    return true;
}

int main() {
    int count = 0;
    int n = 1;

    while (count < 10001) {
        n++;
        if (isPrime(n)) {
            // cout << "Prime: " << n << endl;
            count++;
        }
    }
    clock_t t = clock();

    cout << "Prime: " << n << endl;
    cout << "Use time: " << t << " ms" << endl;
}