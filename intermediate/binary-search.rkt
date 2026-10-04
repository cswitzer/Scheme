#lang sicp

(#%require "helpers.rkt")

; base = no target present. return false
; case 1 = target present. return true
; case 2 = target > middle. search the right side
; case 3 = target < middle. search the left side
(define (binary-search x xs)
  (cond
    ((null? xs) #f)
    (else
     (let ((middle-index (quotient (length xs) 2)))
       (let ((middle-value (list-ref xs middle-index)))
	 (cond
	   ((= x middle-value) #t)
	   ((< x middle-value)
     	     (binary-search x (take middle-index xs)))
	   ((> x middle-value)
             (binary-search x (drop (+ middle-index 1) xs)))))))))

(binary-search 23 '(2 5 8 12 16 23 38))
