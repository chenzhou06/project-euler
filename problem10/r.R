
system.time({
library(pracma)

s <- sum(primes(2000000-1))


print(sprintf("Result: %f", s))

})
