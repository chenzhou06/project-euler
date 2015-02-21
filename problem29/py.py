#! /usr/bin/env python3

from datetime import datetime

def main():
    com = set([i**j for i in range(2,101) for j in range(2,101)])
    res = len(com)
    print("Result:", res)
    return 0

if __name__ == "__main__":
    start = datetime.now()
    main()
    end = datetime.now()
    print("Use time:", end-start)