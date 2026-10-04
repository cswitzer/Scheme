#lang sicp

(#%require "helpers.rkt")
(#%provide count-leaves)

(define (count-leaves tree)
  (cond
    ((null? tree) 0)
    ((and (null? (left tree)) (null? (right tree))) 1)
    (else
     (+
      (count-leaves (left tree))
      (count-leaves (right tree))))))
