#lang sicp

(define (double-all xs)
  (if (null? xs)
      '()
      (cons (* (car xs) 2)
            (double-all (cdr xs)))))

(double-all '(1 2 3 4 5 6))
