
squ <- function(n) {
    return(n^2)
}

sumofsq <- function(n) {
    s <- sapply(seq(1,n), squ)
    return(sum(s))
}

sqofsum <- function(n) {
    s <- sum(seq(1,n))
    return(s^2)
}

ret <- abs(sqofsum(100)-sumofsq(100))

print(ret)