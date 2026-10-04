#lang sicp

(define (repeat n x)
  (if (= x 0)
    '()
    (cons n (repeat n (- x 1)))))

(repeat 7 4)
