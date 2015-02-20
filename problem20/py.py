#! /usr/bin/env python3

from datetime import datetime

def main():
    sumn = 0
    for c in str(fact(100)):
        sumn += int(c)
    print("Result:", sumn)

def fact(n):
    ret = 1
    for i in range(1, n+1):
        ret *= i
    return ret

if __name__ == "__main__":
    start = datetime.now()
    main()
    end = datetime.now()
    print("Use time:", end - start)
