from time import time



def main():
    for i in range(1, 1000):
        for j in range(i, 1000):
            k = 1000 - i - j
            if i*i + j*j == k*k:
                print("Result: ", i, j, k)
                print("Product: ", i*j*k)

if __name__ == "__main__":
    start = time()
    main()
    end = time()
    t = end - start
    print("Use time: ", t)