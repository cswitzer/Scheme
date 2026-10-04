#lang sicp

(#%require "helpers.rkt")
(#%provide tree-sum)

(define (tree-sum tree)
  (cond
    ((null? tree) 0)
    (else
     (+ (car tree)
	 (tree-sum (left tree))
	 (tree-sum (right tree))))))
