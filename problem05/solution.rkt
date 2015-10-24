#|
 | What is the smallest positive number that is evenly divisible by all of the
 | numbers from 1 to 20?
 |#

#lang racket

(define (divisible-from-1-to-20 n)
  (for/and ([i '(9 10 11 12 13 14 15 16 17 18 19 20)])
    (= (remainder n i) 0)))

(define (smallest start)
  (if (divisible-from-1-to-20 start)
    start
    (smallest (add1 start))))

(smallest (* 2 4 6 8 10))
#| 232792560 |#
