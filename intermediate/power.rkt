#lang sicp

(define (power x y)
  (cond
    ((= y 0) 1)
    ((* x (power x (- y 1))))))

(power 2 8)
