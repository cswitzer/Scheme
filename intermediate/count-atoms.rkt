#lang sicp

(define (count-atoms xs)
  (cond
    ((null? xs) 0)
    ((list? (car xs))
     (+ (count-atoms (car xs))
	(count-atoms (cdr xs))))
    (else (+ 1 (count-atoms (cdr xs))))))

(count-atoms '(1 '(1 2) '(9 8) 4))
