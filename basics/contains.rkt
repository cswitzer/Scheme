#lang sicp

(define (contains x xs)
  (if (null? xs)
    #f
    (if (= (car xs) x)
      #t
      (contains x (cdr xs)))))

(contains 5 '(1 2 3 4 5 6 7 8 9 10))
