#lang sicp

; Euclid found that the GCD(a, b) is the same as the GCD(b, remainder(a / b))
; An example is GCD(48, 18) => GCD(18, 12) because 48 / 18 is 2 remainder 12
; So, the base case occurs when a / b is remainder 0
(define (my-gcd a b)
  (cond
    ((= b 0) a)
    (else
     (my-gcd b (remainder a b)))))

(my-gcd 18 12)
