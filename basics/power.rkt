#lang sicp

(define (power b e)
  (if (= e 0)
    1
    (* b (power b (- e 1)))))

(power 2 4)
