
def isPali(n):
    return str(n)==''.join(reversed(str(n)))


def main():
    max = 0
    for i in range(999, 99, -1):
        for j in range(999, i-1, -1):
            if i*j <= max:
                continue
            if isPali(i * j) and i * j > max:
                max = i * j
    print(max)

if __name__ == "__main__":
    main()
