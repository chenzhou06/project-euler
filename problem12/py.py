import prime # no module
from datetime import datetime

start = datetime.now()



for i in range(100000, 10000000000):
    n = i * (i + 1) / 2
    if prime.num_factors(n) > 500:
        print("Result:", n)
        break

end = datetime.now()
print("Use time:", end-start)