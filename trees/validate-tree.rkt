#lang sicp

(#%require "helpers.rkt")
(#%provide validate-tree)

(define (validate-tree tree lower upper)
  (cond
    ((null? tree) #t)
    ((<= (car tree) lower) #f)
    ((>= (car tree) upper) #f)
    (else
     (and
      (validate-tree (left tree) lower (car tree))
      (validate-tree (right tree) (car tree) upper)))))
