#lang sicp

(#%require "helpers.rkt")

(define (quick-sort xs)
  (cond
    ((null? xs) '())
    ((null? (cdr xs)) xs)
    (else
     (let ((pivot (car xs)))
       ; partition by less or greater-or-equal to pivot
       (append
	(quick-sort (less-than pivot (cdr xs)))
	(list pivot)
	(quick-sort (greater-or-equal pivot (cdr xs))))))))

(quick-sort '(9 7 10 11 2 1 0))
