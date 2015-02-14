#include <iostream>
#include <ctime>

using namespace std;

int main() {
    for (int i = 1; i < 1000; i++) {
        for (int j = i; j < 1000; j++) {
            int k = 1000 - i - j;
            if (i*i + j*j == k*k) {
                cout << "Result: " << i << " " << j << " " << k << endl;
            }
        }
    }
    clock_t t = clock();
    cout << "Use time: " << t << endl;

}

