#lang sicp

(#%require "helpers.rkt")
(#%provide tree-size)

(define (tree-size tree)
  (cond
    ((null? tree) 0)
    (else
     (+ 1
	(tree-size (left tree))
	(tree-size (right tree))))))
