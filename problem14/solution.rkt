   ;; The following iterative sequence is defined for the set of positive
   ;; integers:

   ;; n → n/2 (n is even)
   ;; n → 3n + 1 (n is odd)

   ;; Using the rule above and starting with 13, we generate the following
   ;; sequence:

   ;;                 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

   ;; It can be seen that this sequence (starting at 13 and finishing at 1)
   ;; contains 10 terms. Although it has not been proved yet (Collatz Problem),
   ;; it is thought that all starting numbers finish at 1.

   ;; Which starting number, under one million, produces the longest chain?

   ;; NOTE: Once the chain starts the terms are allowed to go above one million.
#lang racket

(define (chain start)
  (define (iter n acc)
    (if (>= 1 n)                        ; handle zero condition
        (add1 acc)
        (if (even? n)
            (iter (/ n 2) (add1 acc))
            (iter (add1 (* 3 n)) (add1 acc)))))
  (iter start 0))

(define LIMIT 1000000)

(define (maxchain under)
  (define (iter maxi maxc acc)
    (if (< acc under)
        (let ([c (chain acc)])
          (if (< c maxc)
              (iter maxi maxc (add1 acc))
              (iter acc c (add1 acc))))
        (list maxi maxc)))              ; `maxi`: the number which has longest chain `maxc`
  (iter 0 0 1))

(maxchain LIMIT)                        ; '(837799 525)
