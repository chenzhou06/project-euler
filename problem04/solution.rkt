#|
 | A palindromic number reads the same both ways. The largest palindrome made
 | from the product of two 2-digit numbers is 9009 = 91 × 99.
 |
 | Find the largest palindrome made from the product of two 3-digit numbers.
 |#

#lang racket
(require racket/list)

(define (palindrome? n)
  (let* ([str-n (number->string n)]
         [str-n-reversed (reverse str-n)])
    (string=? str-n str-n-reversed)))

;; todo
