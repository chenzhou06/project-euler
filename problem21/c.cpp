#include <iostream>
#include <ctime>

using namespace std;

int d(int n) {
    int sum = 0;
    for (int i = 1; i < n; i++) {
        if (n % i == 0) {
            sum += i;
        }
    }
    return sum;
}

int main() {
    clock_t start = clock();
    int sum = 0;
    int p;
    for (int i = 1; i < 10001; i++) {
        p = d(i);
        if (i == d(p) && i != p) {
            sum += i;
            // cout << i << " " <<p << endl;
        }
    }
    cout << "Result: " << sum << endl;
    clock_t end = clock();
    cout << "Use time: " << end << endl;
}
