from datetime import datetime
from math import sqrt

NUM = 2000000

def mark(sieve, i):
    for x in range(i + i, len(sieve), i):
        sieve[x] = False

def main():
    start = datetime.now()
    sieve = [True] * 2000000
    for i in range(2, int(sqrt(len(sieve))) +1):
        if sieve[i]: mark(sieve, i)

    s = sum(i for i in range(2, len(sieve)) if sieve[i])
    end = datetime.now()
    print("Result:", s)
    print("Use time:", end-start)


if __name__ == "__main__":
    main()