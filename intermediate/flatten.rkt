#lang sicp

(define (flatten xs)
  (cond
    ((null? xs) '())
    ((list? (car xs))
     (append (flatten (car xs))
	     (flatten (cdr xs))))
    (else (cons (car xs) (flatten (cdr xs))))))

(flatten '(1 (2 3) ((4 5)) 6))
