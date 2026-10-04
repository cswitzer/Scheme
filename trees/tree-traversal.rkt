#lang sicp

(#%require "helpers.rkt")
(#%provide preorder inorder postorder)

(define (preorder tree)
  (cond
    ((null? tree) '())
    (else
     (append
      (list (car tree))
      (preorder (left tree))
      (preorder (right tree))))))


(define (inorder tree)
  (cond
    ((null? tree) '())
    (else
     (append
      (inorder (left tree))
      (list (car tree))
      (inorder (right tree))))))


(define (postorder tree)
  (cond
    ((null? tree) '())
    (else
     (append
      (postorder (left tree))
      (postorder (right tree))
      (list (car tree))))))
