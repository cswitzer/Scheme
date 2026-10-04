#lang sicp

(define (flatten xs)
  (define (visit item acc)
    (if (number? item)
      (cons item acc)
      (visit-list item acc)))

  (define (visit-list xs acc)
    (if (null? xs)
      acc
      (visit-list (cdr xs)
		  (visit (car xs) acc)))))

