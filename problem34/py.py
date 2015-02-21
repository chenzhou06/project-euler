#! /usr/bin/env python3

from datetime import datetime

def fact(n):
    s = 1
    for i in range(1, n+1):
        s *= i
    return s

def sumOfFact(n):
    s = 0
    while n > 0:
        d = n % 10
        n //= 10
        s += fact(d)
    return s

def main():
    res = [i for i in range(3, 100000) if sumOfFact(i) == i]
    print("Result:", sum(res))

if __name__ == "__main__":
    start = datetime.now()
    main()
    end = datetime.now()
    print("Use time:", end - start)