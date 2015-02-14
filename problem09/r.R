Rprof()

for (i in seq(1,997)) {
    for (j in seq(i, 998)) {
        k = 1000 - i - j
        if (i^2 + j^2 == k^2) {
            sprintf("Result: %d %d %d\n", i, j, k)
            sprintf("Product: %d\n", i*j*k)
        }
    }
}

Rprof(NULL)
summaryRprof()