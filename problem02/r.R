
a <- 1
b <- 1
c <- 0
sum <- 0

while (b < 4000000) {
    c <- a + b
    sum <- sum + c
    a  <-  c + b
    b  <-  c + a
}

print(sum)