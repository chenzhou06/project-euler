#! /usr/bin/env python3

from datetime import datetime 

def main():
    s = 0
    for c in str(2**1000):
        s += int(c)
    print(s)

if __name__ == "__main__":
    main()
