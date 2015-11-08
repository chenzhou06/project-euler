#|;; problem 19

   You are given the following information, but you may prefer to do some
   research for yourself.

     • 1 Jan 1900 was a Monday.
     • Thirty days has September,
       April, June and November.
       All the rest have thirty-one,
       Saving February alone,
       Which has twenty-eight, rain or shine.
       And on leap years, twenty-nine.
     • A leap year occurs on any year evenly divisible by 4, but not on a
       century unless it is divisible by 400.

   How many Sundays fell on the first of the month during the twentieth
   century (1 Jan 1901 to 31 Dec 2000)?
|#
#lang racket
(define Month '("January" "February" "March" "April" "May" "June"
                "July" "August" "September" "October" "November" "December"))

(define Weekday '("Sunday" "Monday" "Tuesday" "Wednesday"
                  "Thursday" "Friday" "Saturday"))

(struct simple-date (day month year weekday) #:transparent)

(define (leap-year? year)
  (cond
    [(zero? (remainder year 100)) (zero? (remainder year 400))]
    [else (zero? (remainder year 4))]))

(define (end-of-week? d)
  (equal? (simple-date-weekday d) 7))

(define (end-of-month? d)
  (let ([day (simple-date-day d)]
        [month (simple-date-month d)]
        [year (simple-date-year d)])
    (case month
      [(4 9 6 12) (= day 30)]
      [(2) (if (leap-year? year)
                        (= day 29)
                        (= day 28))]
      [else (= day 31)])))

(define (end-of-year? d)
  (and (equal? (simple-date-month d) (end-of-month? d))))

(define (add-a-day d)
  (let ([day (simple-date-day d)]
        [month (simple-date-month d)]
        [year (simple-date-year d)]
        [weekday (simple-date-weekday d)])
    (simple-date (if (end-of-month? d) 1 (add1 day))
                 (if (end-of-month? d) (add1 month) month)
                 (if (end-of-year? d) (add1 year) year)
                 (if (end-of-week? d) 1 (add1 weekday)))))

(define (print-date d)
  (printf "Day: ~a\nMonth: ~a\nYear: ~a\nWeekday: ~a\n"
          (simple-date-day d)
          (simple-date-month d)
          (simple-date-year d)
          (simple-date-weekday d)))

(define (count-days from to)
  (if (eqv? from to)
      empty
      (cons from (count-days (add-a-day from) to))))

;; test
(define test-date (simple-date 1 1 1900 1))
(define test-date-end-of-week (simple-date 1 1 1900 7))
(end-of-week? test-date)
(end-of-week? test-date-end-of-week)
(define test-end-of-month (simple-date 31 1 1900 7))
(leap-year? 1900)
(end-of-year? (simple-date 29 7 1999 1))
(print (simple-date-day (add-a-day test-end-of-month)))
(print-date test-end-of-month)
(print-date (add-a-day test-end-of-month))
(define from-d (simple-date 1 1 1900 1))
(define to-d (simple-date 7 1 1900 7))
(equal? from-d (simple-date 1 1 1900 1))
