
def fib(n):
    if n == 1:
        return 1
    elif n == 2:
        return 2
    else:
        return fib(n-1) + fib(n-2)

def main():
    i = 1
    sum = 0
    n = 1
    while n < 4000000:
        if n % 2 != 0:
            sum += n

        n = fib(i)
        i = i + 1

    print(sum)

if __name__ == "__main__":
    main()
