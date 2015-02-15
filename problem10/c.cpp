#include <iostream>
#include <cmath>
#include <ctime>
#define NUM 2000000

using namespace std;

bool isPrime(long long n) {
    long long i;
    for (i = 2; i < (long long)sqrt(n)+1; i++) {
        if (n % i == 0) return false;
    }
    return true;
}

int main() {
    clock_t start = clock();
    long long i, sum = 0;
    for (i = 2; i < NUM; i++) {
        // cout << i << endl;
        if (isPrime(i)) {
            sum += i;
            // cout << i << endl;
        }
    }
    clock_t end = clock();
    cout << "Result:" << sum << endl;
    cout << "Use time:" << end << endl;

}