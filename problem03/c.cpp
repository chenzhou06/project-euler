#include <iostream>
#include <cmath>
#include <vector>

using namespace std;

bool isPrime(long long n) {
    double root = sqrt(n);
    for (int i = 2; i < root + 1; i++) {
        if (n % i == 0) {
            return false;
        }
    }
    return true;
}

int main() {
    long long n = 600851475143;
    int max = 0;
    for (long long i = 3; i < n; i += 2) {
        if (n % i == 0 && isPrime(i)) {
            if (i > max)
                max = i;
        }
    }
    cout << max << endl;
}