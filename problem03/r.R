

n <- 600851475143
factors <- c()

factor <- 2
while (factor ** 2 <= n) {
    while (n %% factor == 0) {
        n <- n %/% factor
        factors <- c(factors, factor)
    }
    if (factor == 2) {
        factor <- factor + 1
    } else {
        factor <- factor + 2
    }
}
if (n != 1) {
    factors <- c(factors, n)
}

print(max(factors))