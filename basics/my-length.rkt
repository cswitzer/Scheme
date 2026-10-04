#lang sicp

(define (my-length xs)
  (if (null? xs)
    0
    (+ 1 (my-length (cdr xs)))))

(my-length '(10 20 30))
