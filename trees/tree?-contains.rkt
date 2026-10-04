#lang sicp

(#%require "helpers.rkt")
(#%provide tree-contains?)

(define (tree-contains? x tree)
  (cond
    ((null? tree) #f)
    ((= (car tree) x) #t)
    (else
     (or (tree-contains? x (left tree))
         (tree-contains? x (right tree))))))
