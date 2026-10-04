#lang sicp

(define (max-nested xs)
  (define (visit item acc)
    (if (number? item)
      (if (> item acc) item acc)
      (visit-list item acc)))

  (define (visit-list xs acc)
    (if (null? xs)
      acc
      (visit-list (cdr xs) (visit (car xs) acc))))

  (visit-list xs -inf.0))

(max-nested '(3 (7 2) (1 (9 4) 5) 6))
