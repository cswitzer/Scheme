#lang sicp

(define (my-max xs)
  (if (null? (cdr xs))
      (car xs)
      (if (> (car xs) (my-max (cdr xs)))
          (car xs)
          (my-max (cdr xs)))))

(my-max '(1 2 3 4))
