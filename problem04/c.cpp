#include <iostream>
#include <string>
#include <algorithm>

using namespace std;

bool isPali(int n) {
    // todo
    // string str = string(n);
    // int i;
    // for (i = 0; i < str.size() / 2; i++) {
    //     if (str[i] != str[str.size()-i-1]) {
    //         return false;
    //     }
    // }
    // return true;
}

int main() {
    int i, j, max = 0;
    for (i = 999; i < 99; i--) {
        for (j = 999; j < i-1; j--) {
            if (i*j <= max) continue;
            if (isPali(i*j) && i*j > max) {
                max = i*j;
            }
        }
    }
    cout << max << endl;
}