;; Problem 17
;; If the numbers 1 to 5 are written out in words: one, two, three,
;; four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in
;; total.

;; If all the numbers from 1 to 1000 (one thousand) inclusive were
;; written out in words, how many letters would be used?

;; NOTE: Do not count spaces or hyphens. For example, 342 (three
;; hundred and forty-two) contains 23 letters and 115 (one hundred and
;; fifteen) contains 20 letters. The use of "and" when writing out
;; numbers is in compliance with British usage.
#lang racket

(define ones '("zero" "one" "two" "three"
               "four" "five" "six" "seven" "eight" "nine"))
(define teens
  '("ten" "eleven" "twelve" "thirteen" "fourteen" "fifteen"
    "sixteen" "seventeen" "eighteen" "nineteen"))
(define tys
  '("twenty" "thirty" "forty" "fifty" "sixty" "seventy" "eighty" "ninety"))

(define (speak-digit num)
  ;; 0 <= num < 9
  (list-ref ones num))

(define (speak-two-digits num)
  ;; num: 10~99
  (cond
    [(or (< num 10) (> num 99)) #f]
    [(< num 20) (list-ref teens (- num 10))]
    [else (let ([ten-digit (quotient num 10)]
                [one-digit (remainder num 10)])
            (if (zero? one-digit)
                (list-ref tys (- ten-digit 2))
                (string-append (list-ref tys (- ten-digit 2)) " "
                               (speak-digit one-digit))))]))

(define (speak-under-two-digits num)
  (if (< num 10)
      (speak-digit num)
      (speak-two-digits num)))


(define (speak-three-digits num)
  ;; num: 100~999
  (cond
    [(or (< num 100) (> num 999)) #f]
    [else (let ([hundred-digit (quotient num 100)]
                [last-two-digits (remainder num 100)])
            (if (zero? last-two-digits)
                (string-append (speak-digit hundred-digit)
                               " hundred")
                (string-append (speak-digit hundred-digit)
                               " hundred and "
                               (speak-under-two-digits last-two-digits))))]))

(define (speak-under-three-digits num)
  (if (< num 100)
      (speak-under-two-digits num)
      (speak-three-digits num)))

(define (speak-four-digits num)
  (cond
    [(or (< num 1000 ) (> num 9999)) #f]
    [else (let ([thousand-digit (quotient num 1000)]
                [rest-digits (remainder num 1000)])
            (if (zero? rest-digits)
                (string-append (speak-digit thousand-digit)
                               " thousand")
                (string-append (speak-digit thousand-digit)
                               " thousand "
                               (speak-under-three-digits rest-digits))))]))

(define (speak-under-four-digits num)
  (if (< num 1000)
      (speak-under-three-digits num)
      (speak-four-digits num)))

(define (count-letters sentence)
  (foldl (λ (word acc) (+ (string-length word) acc))
         0
         (string-split sentence)))

(foldl (λ (words acc) (+ (count-letters words) acc))
       0
       (map speak-under-four-digits (range 1 1001))) ; 21124


