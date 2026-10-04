#lang sicp

(#%require "helpers.rkt")
(#%provide invert-tree)

(define (invert-tree tree)
  (cond
    ((null? tree) '())
    (else
     (make-tree
      (car tree)
      (invert-tree (right tree))
      (invert-tree (left tree))))))
