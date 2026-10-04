#lang sicp

(define (remove-all x xs)
  (if (null? xs)
    '()
    (if (= x (car xs))
      (remove-all x (cdr xs))
      (cons (car xs) (remove-all x (cdr xs))))))

(remove-all 3 '(1 2 3 4 5 3 6 3 7 3 9 3))
