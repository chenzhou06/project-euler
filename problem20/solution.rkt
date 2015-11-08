;; Problem 20
;; n! means n × (n − 1) × ... × 3 × 2 × 1

;; For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800, and the sum of
;; the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

;; Find the sum of the digits in the number 100!
#lang racket

(define (digits num)                    ; return list of digits
  (let ([quo (quotient num 10)]
        [rem (remainder num 10)])
    (if (zero? quo)
        (cons rem '())
        (cons rem (digits quo)))))

(define (factor num)
  (if (<= num 1)
      1
      (* num (factor (sub1 num)))))

(foldl + 0 (digits (factor 100)))       ; 648
