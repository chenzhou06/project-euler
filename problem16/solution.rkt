;; Problem 16
;; 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

;; What is the sum of the digits of the number 2^1000?
#lang racket

(define (digits num)                    ; return list of digits
  (let ([quo (quotient num 10)]
        [rem (remainder num 10)])
    (if (zero? quo)
        (cons rem '())
        (cons rem (digits quo)))))

(foldl + 0 (digits (expt 2 1000)))      ; 1366



