#lang sicp

(define (add-one xs)
  (if (null? xs)
    '()
    (cons (+ (car xs) 1) (add-one (cdr xs)))))
 
(add-one '(1 2 3 4 5))
