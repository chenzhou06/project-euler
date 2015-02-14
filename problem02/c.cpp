#include <iostream>

using namespace std;




int main() {
    int a = 1;
    int b = 1;
    int c = 1;
    int sum = 0;

    while (b < 4000000) {
        c = a + b;
        sum += c;
        a = b + c;
        b = c + a;
    }

    cout << sum << endl;
}