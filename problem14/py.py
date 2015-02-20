#! /usr/bin/env python3
from datetime import datetime

def main():
    start = datetime.now()
    cache = {1:1}
    m, n = 0, 0
    for i in range(1, 1000000):
        c = chain(cache, i)
        if c > m: m,n = c, i
    end = datetime.now()
    print("Result:", n)
    print("Use time", end - start)


def chain(cache, n):
    if not cache.get(n, 0):
        if n % 2:
            cache[n] = 1  + chain(cache, 3*n+1)
        else:
            cache[n] = 1 + chain(cache, n//2 )
    return cache[n]

if __name__ == "__main__":
    main()
