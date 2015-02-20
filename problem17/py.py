#! /usr/bin/env python3

import num2words
from datetime import datetime

def main():
    count = 0
    for i in range(1, 1001):
        for c in num2words.num2words(i):
            if c not in [" ", "-"]:
                count += 1
    print("Result:", count)

if __name__ == "__main__":
    start = datetime.now()
    main()
    end = datetime.now()
    print("Use time:", end-start)
