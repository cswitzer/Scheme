#lang sicp

(#%require "helpers.rkt")
(#%provide tree-delete)

(define (tree-delete tree x)
  (cond
    ((null? tree) '())
    ; use make tree instead of tree-delete
    ((< x (car tree))
     (make-tree
      (car tree)
      (tree-delete (left tree) x)
      (right tree)))
    ((> x (car tree))
     (make-tree
      (car tree)
      (left tree)
      (tree-delete (right tree) x)))
    ((leaf-node? tree) '())
    ; only left child
    ((and
      (not (null? (left tree)))
      (null? (right tree))) 
     (left tree))
    ; only right child
    ((and
      (not (null? (right tree)))
      (null? (left tree)))
     (right tree))
    ; node has two children
    ; replace current with max node on left side
    ; and delete that node as well
    (else
     (make-tree
      (tree-max (left tree))
      (tree-delete (left tree) (tree-max (left tree)))
      (right tree)))))
