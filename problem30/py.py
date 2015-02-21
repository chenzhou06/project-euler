#! /usr/bin/env python3

from datetime import datetime

def power_of_digits(n, p):
    s = 0
    while n > 0:
        d = n % 10
        n //= 10
        s += d**p
    return s

def main():
    res = [i for i in range(2,200000) if power_of_digits(i, 5) == i]
    print("Result:", sum(res))

if __name__ == "__main__":
    start = datetime.now()
    main()
    end = datetime.now()
    print("Use time:", end - start)