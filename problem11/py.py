from datetime import datetime

def main():
    start = datetime.now()
    f = open("matrix.txt", "r")
    m = []

    for line in f:
        s = line.split(" ")
        m.append(list(int(i) for i in s))

    # print(rowPro(m))
    # print(colPro(m))
    # print(diaPro(m))
    rowMax = max(rowPro(m))
    print("rowMax:", rowMax)

    colMax = max(colPro(m))
    print("colMax:", colMax)

    diaMax = max(diaPro(m))
    print("diaMax:", diaMax)

    res = max(rowMax, colMax, diaMax)
    end = datetime.now()
    print("Result:", res)
    print("Use time:", end-start)


def rowPro(m):
    row_pros = []
    for row in m:
        for i in range(0, len(row)-3):
            pro = 1
            for j in range(4):
                pro *= row[i+j]

            row_pros.append(pro)

    return row_pros

def colPro(m):
    col_pros = []
    for i in range(20):
        for j in range(20-3):
            pro = 1
            for k in range(j, j+4):
                # print(m[k][i], end=" ")
                pro *= m[k][i]
            # print("\n"+str(pro))
            # print("\n")
            col_pros.append(pro)
        # print("\n")
    return col_pros

def diaPro(m):
    dia_pros = []

    for i in range(20-3):
        for j in range(20-3):
            pro = 1
            for k in range(4):
                # print(m[i+k][j+k], end = " ")
                pro *= m[i+k][j+k]
            dia_pros.append(pro)
            # print("\n"+str(pro))
            # print("\n")

    for i in range(20-3):
        for j in range(3,20):
            pro = 1
            for k in range(4):
                # print(m[i+k][j-k], end = " ")
                pro *= m[i+k][j-k]
            # print("\n")
            dia_pros.append(pro)

    return dia_pros

if __name__ == "__main__":
    main()





