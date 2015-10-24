#|
 | What is the smallest positive number that is evenly divisible by all of the
 | numbers from 1 to 20?
 |#
#| todo |#
#lang racket

(define (seq f t)
  (define (iter f t out)
    (if (< f t)
      (iter (+ f 1) (cons f out))
      out))
  (iter f t '()))

(define (divisible-from-1-to-20 n)
  (let ([divided-by-i? (lambda (i)
                         (eq? 0 (remainder n i)))])
    (filter divided-by-i? (range 1 20))))

(define (smallest start)
  (letrec ([no-false? (lambda (l)
                      (let ([h (car l)]
                            [xs (rest l)])
                        (cond
                          [(empty? h) #t]
                          [(false? h) #f]
                          [else (no-false? xs)])))])
                       (if (false? (no-false? (divisible-from-1-to-20 start)))
                         (smallest (+ start 1))
                         start)))

  (smallest 1)

