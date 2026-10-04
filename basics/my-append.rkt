#lang sicp

(define (my-append xs ys)
  (cond
    ((null? xs) ys)
    (else (cons (car xs) (my-append (cdr xs) ys)))))

(my-append '(1 2 3) '(4 5 6))
