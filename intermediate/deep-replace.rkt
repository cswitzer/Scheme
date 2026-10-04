#lang sicp

(define (deep-replace x y xs)
  (cond
    ((null? xs) '())
    ((list? (car xs))
     (cons (deep-replace x y (car xs)) (deep-replace x y (cdr xs))))
    (else
     (cond
       ((= (car xs) x) (cons y (deep-replace x y (cdr xs))))
       (else (cons (car xs) (deep-replace x y (cdr xs))))))))

(deep-replace 3 99 '(1 (2 3) ((3 4)) 5))
