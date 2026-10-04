#lang sicp

(#%provide drop take merge less-than greater-or-equal)

; base = n is 0, which means take no elements
; else = take the head and prepend to take(n - 1, tail xs)
(define (take n xs)
  (cond
    ((= n 0) '())
    (else
     (cons (car xs) (take (- n 1) (cdr xs))))))


; base = dropping 0 elements drops nothing
; else = chop off head, recursively call drop with n - 1 and tail xs
(define (drop n xs)
  (cond
    ((= n 0) xs)
    (else
     (drop (- n 1) (cdr xs)))))


; please pass in two sorted lists.
(define (merge xs ys)
  (cond
    ((null? xs) ys)
    ((null? ys) xs)
    (else
     (cond
       ((< (car xs) (car ys))
        (cons (car xs)
              (merge (cdr xs) ys)))
       (else
        (cons (car ys)
              (merge xs (cdr ys))))))))


(define (less-than n xs)
  (cond
    ((null? xs) '())
    ((< (car xs) n)
     (cons (car xs)
           (less-than n (cdr xs))))
    (else
     (less-than n (cdr xs)))))


(define (greater-or-equal n xs)
  (cond
    ((null? xs) '())
    ((>= (car xs) n)
     (cons (car xs)
           (greater-or-equal n (cdr xs))))
    (else
     (greater-or-equal n (cdr xs)))))
