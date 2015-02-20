from datetime import datetime

def main():
    start = datetime.now()
    sumn = 0
    with open("digits.txt", "r") as f:
        for line in f:
            sumn += int(line.strip())
    res = str(sumn)[:11]
    end = datetime.now()
    print("Result:", res)
    print("Use time:", end-start)

if __name__ == "__main__":
    main()