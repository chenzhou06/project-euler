#! /usr/bin/env python3

def divisors(n): return list(i for i in range(1, int(n/2+1)) if n % i == 0)
pair = dict( ((n, sum(divisors(n))) for n in range(1, 10000)) )
print(sum(n for n in range(1, 10000) if pair.get(pair[n], 0) == n and pair[n] != n))