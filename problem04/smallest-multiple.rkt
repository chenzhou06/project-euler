#|
 | What is the smallest positive number that is evenly divisible by all of the
 | numbers from 1 to 20?
 |#
#lang racket

(define (seq f t)
  (define (iter f t out)
    (if (< f t)
      (iter (+ f 1) (cons f out))
      out))
  (iter f t '()))

