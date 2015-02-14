
Rprof()
isPrime <- function(n) {
    if (n == 2) return(TRUE)
    if (any(n %% seq(2, sqrt(n)+1) == 0)) return(FALSE)
    return(TRUE)
}

count <- 0
n <- 1

while (count < 10001) {
    n <- n + 1
    if (isPrime(n)) {
        count <- count + 1
    }

}
Rprof(NULL)
sprintf("Prime: %d", n)
summaryRprof()
