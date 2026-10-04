#lang sicp

(define (children node)
  (if (null? node)
    '()
    (cdr node)))


(define (collect-tree tree)
  (define (visit node acc)
    (visit-children
     (children node)
     (cons (car node) acc)))

  (define (visit-children current acc)
    (if (null? current)
      acc
      (visit-children
       (cdr current)
       (visit (car current) acc))))

