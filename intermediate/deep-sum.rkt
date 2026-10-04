#lang sicp

(define (deep-sum xs)
  (cond
    ((null? xs) 0)
    ((list? (car xs))
     (+ (deep-sum (car xs))
	(deep-sum (cdr xs))))
    (else
     (+ (car xs)
	(deep-sum (cdr xs))))))

(deep-sum '(1 (1 2) (9 8) 4))
