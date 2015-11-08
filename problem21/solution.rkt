#|
   Let d(n) be defined as the sum of proper divisors of n (numbers less than
   n which divide evenly into n).
   If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair
   and each of a and b are called amicable numbers.

   For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22,
   44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1,
   2, 4, 71 and 142; so d(284) = 220.

   Evaluate the sum of all the amicable numbers under 10000.
|#
#lang racket

(define (divisors num)
  (define (iter bound idx ret)
    (let-values ([(quo rem) (quotient/remainder num idx)])
      (cond
        [(= num 1) '(1)]
        [(>= idx bound) (cons 1 ret)]
        [(zero? rem) (iter (min bound quo) (add1 idx) (cons idx (cons quo ret)))]
        [else (iter bound (add1 idx) ret)])))
  (iter num 2 empty))

(define (amicable? num)
  (let* ([d (λ (n) (foldl + 0 (divisors n)))]
         [d-a (d num)]
         [b d-a]
         [d-b (d b)])
    (and (not (= num d-a)) (= num d-b))))

(foldl + 0 (filter amicable? (range 1 10001))) ; 31626
