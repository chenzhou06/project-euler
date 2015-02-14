from datetime import datetime


def main():
    start = datetime.now()

    first = 2 * 4 * 6 * 8 * 10
    for i in range(first, 999999999, 20):
        if all(i % n == 0 for n in [9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]):
            print("Result:", i)
            break

    end = datetime.now()
    t = (end - start)
    print("Use time:", t)

if __name__ == "__main__":
    main()