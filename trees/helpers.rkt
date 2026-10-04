#lang sicp

(#%provide left right make-tree tree-min tree-max leaf-node?)


; Trees in Scheme look like this for now:
; '(10 (5 () ()) (15 () ()))
;  ^  ^         ^
; value left    right

(define (left tree)
  (car (cdr tree)))


(define (right tree)
  (car (cdr (cdr tree))))


(define (make-tree value left right)
  (list value left right))


(define (tree-min tree)
  (cond
    ((null? tree) '())
    ((null? (left tree)) (left tree))
    (else (tree-min (left tree)))))


(define (tree-max tree)
  (cond
    ((null? tree) '())
    ((null? (right tree)) (car tree))
    (else (tree-max (right tree)))))


(define (leaf-node? tree)
  (and
   (not (null? tree))
   (null? (left tree))
   (null? (right tree))))
