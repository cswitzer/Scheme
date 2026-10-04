#lang sicp

(#%require "helpers.rkt")
(#%provide search-tree)

(define (search-tree x tree)
  (cond
    ((null? tree) #f)
    ((= x (car tree)) #t)
    ((< x (car tree))
     (search-tree x (left tree)))
    (else
     (search-tree x (right tree)))))
