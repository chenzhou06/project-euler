#lang racket

(require math)

(define (multiples-of-3-or-5? n)
  (let ([remainder-of-3 (remainder n 3)]
        [remainder-of-5 (remainder n 5)])
    (or (eq? 0 remainder-of-5) (eq? remainder-of-3 0))))

(define (get-multiples idx out)
  (if (< idx 1000)
    (if (multiples-of-3-or-5? idx)
      (get-multiples (+ idx 1) (cons idx out))
      (get-multiples (+ idx 1) out))
    out))

(sum (get-multiples 0 '()))


(define x
  (lambda (x) (x)))
