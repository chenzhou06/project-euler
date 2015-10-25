#|
 | A Pythagorean triplet is a set of three natural numbers, a < b < c, for
 | which,
 |
 |                                 a^2 + b^2 = c^2
 |
 | For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
 |
 | There exists exactly one Pythagorean triplet for which a + b + c = 1000.
 | Find the product abc.
 |#
#lang racket

(require unstable/list)
; cartesian-product is unstable

(define (pyth=? x)
  (match x [(list a b) (= (+ (sqr a) (sqr b)) (sqr (- 1000 a b)))]))

(match (first (filter pyth=? (cartesian-product (range 1 1000) (range 1 1000))))
  [(list a b) (values a b (- 1000 a b))])
;; 200 375 425

