#lang sicp

(define (replace-all x y xs)
  (cond
    ((null? xs) '())
    ((= x (car xs)) (cons y (replace-all x y (cdr xs))))
    (else (cons (car xs) (replace-all x y (cdr xs))))))

(replace-all 3 99 '(3 3 12 8 44 3 100))
