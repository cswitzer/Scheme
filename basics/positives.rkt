#lang sicp

(define (positives xs)
  (if (null? xs)
    '()
    (if (< (car xs) 0)
      (positives (cdr xs))
      (cons (car xs) (positives (cdr xs))))))

(positives '(-1 -2 -3 1 2 3 -4 -5 -6 4 5 6))
