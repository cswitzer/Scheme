#lang sicp

(define (greater-than n xs)
  (if (null? xs)
    '()
    (if (> (car xs) n)
      (cons (car xs) (greater-than n (cdr xs)))
      (greater-than n (cdr xs)))))

(greater-than 4 '(1 2 3 4 5 6 7 8 9 10 11))
