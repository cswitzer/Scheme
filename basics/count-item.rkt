#lang sicp

(define (count-item x xs)
  (if (null? xs)
      0
      (if (= x (car xs))
          (+ 1 (count-item x (cdr xs)))
          (count-item x (cdr xs)))))

(count-item 5 '(5 8 9 8 5 90 5))
