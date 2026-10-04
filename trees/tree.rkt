#lang sicp

(#%require "helpers.rkt")
(#%provide test-tree display-tree)

(define test-tree
  (make-tree
   10
   (make-tree
    5
    (make-tree
     3
     (make-tree 1 '() '())
     (make-tree 4 '() '()))
    (make-tree
     7
     (make-tree 6 '() '())
     '()))
   (make-tree
    15
    (make-tree
     12
     '()
     (make-tree 13 '() '()))
   (make-tree
     20
     (make-tree 17 '() '())
     (make-tree 25 '() '())))))

(define (display-tree tree)
  (define (display-children tree prefix)
    (let ((left-tree (left tree))
          (right-tree (right tree)))
      (cond
        ((and (not (null? left-tree)) (not (null? right-tree)))
         (display-node left-tree prefix "├── L: " "│   ")
         (display-node right-tree prefix "└── R: " "    "))
        ((not (null? left-tree))
         (display-node left-tree prefix "└── L: " "    "))
        ((not (null? right-tree))
         (display-node right-tree prefix "└── R: " "    ")))))
  (define (display-node tree prefix branch continuation)
    (display prefix)
    (display branch)
    (display (car tree))
    (newline)
    (display-children tree (string-append prefix continuation)))
  (if (null? tree)
      (display "()\n")
      (display-node tree "" "" "")))
