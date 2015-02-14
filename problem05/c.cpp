#include <stdio.h>
#include <ctime>

bool divisible(uint);

int main() {
    clock_t start, end;
    start = clock();

    uint first = 2 * 4 * 6 * 8 * 10;
    while (first) {
        // printf("Now at: %d\n", first);
        if (divisible(first)) {
            printf("Result: %d\n", first);
            break;
        }
        first += 20;
    }

    end = clock();
    printf("Use time: %d\n", end - start);
}

// 9 10 11 12 13 14 15 16 17 18 19 20

bool divisible(uint n) {
    uint i;
    for (i = 9; i < 21; i++) {
        if (n % i != 0) {
            return false;
        }
    }
    return true;
}