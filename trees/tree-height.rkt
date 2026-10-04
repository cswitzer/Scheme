#lang sicp

(#%require "helpers.rkt")
(#%provide tree-height)

(define (tree-height tree)
  (cond
    ((null? tree) 0)
    (else (+ 1 (max (tree-height (left tree)) (tree-height (right tree)))))))
