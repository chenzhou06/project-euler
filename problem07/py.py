from math import sqrt
from time import clock, ctime, time

def isPrime(n):
    if n == 2: return True
    for i in range(2, int(sqrt(n))+1):
        if n % i == 0:
            return False
    return True

def main():
    count = 0
    n = 1
    start = time()
    while count < 10001:
        n += 1
        if isPrime(n):
            # print("Prime: ", n)
            count += 1
    end = time()
    t = end - start
    print("Prime: ", n)
    print("Use time: ", t*1000)


if __name__ == "__main__":
    main()