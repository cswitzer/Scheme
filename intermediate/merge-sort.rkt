#lang sicp

(#%require "helpers.rkt")

; '(2 6 5 3 4 10 9)
; base => empty list or list with 1 element is sorted. return () 
; else => perform merge on merge-sort on left and right of list

(define (merge-sort xs)
  (cond
    ((null? xs) '())
    ((null? (cdr xs)) xs)
    (else 
	(let ((middle (quotient (length xs) 2)))
      	 ; merge the result of merge sort on the left and right of xs
      	 (merge
          (merge-sort (take middle xs))
          (merge-sort (drop middle xs)))))))

(merge-sort '(99 10 14 33 20 19))
