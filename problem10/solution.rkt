#|
 | The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
 |
 | Find the sum of all the primes below two million.
 |#
#lang racket

(require math/number-theory)

(define LIMIT 2000001)

(foldl + 0 (filter prime? (range 0 LIMIT))
#| 142913828922 |#
