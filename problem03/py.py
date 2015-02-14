def factors(n):
    factor=2
    while factor**2<=n:
        while n % factor == 0:
            n = n//factor
            yield factor
        factor += (2 if factor!=2 else 1)
    if n != 1:
        yield n

def main(n):
    print(max(factors(n)))

if __name__ == "__main__":
    main(600851475143)