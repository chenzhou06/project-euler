#|
 | The prime factors of 13195 are 5, 7, 13 and 29.
 |
 | What is the largest prime factor of the number 600851475143 ?
 |#

#lang racket

(require math/number-theory)

(define LIMIT 600851475143)

(last (prime-divisors LIMIT))
;; 6857
