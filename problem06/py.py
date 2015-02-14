def sumofsq(n):
    sum = 0
    for i in range(1, n+1):
        # print(i)
        sum += i*i
    return sum

def sqofsum(n):
    sum = 0
    for i in range(1, n+1):
        sum += i
    return sum * sum

def main():
    print(abs(sumofsq(100)-sqofsum(100)))

if __name__ == "__main__":
    main()
