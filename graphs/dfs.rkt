#lang sicp

;; Example graph
;;
;;       A
;;      / \
;;     B   C
;;    / \   \
;;   D   E   F
;;
(define graph
  '((A B C)
    (B D E)
    (C F)
    (D)
    (E)
    (F)))


(define (neighbors node graph)
  (let ((entry (assoc node graph)))
    (if entry (cdr entry) '())))


(define (dfs start graph)
  (define (visit node visited)
    (if (memq node visited)
      visited
      (visit-neighbors (neighbors node graph)
		       (cons node visited))))

  (define (visit-neighbors nodes visited)
    (cond
      ((null? nodes) visited)
      (else (visit-neighbors (cdr nodes)
		       (visit (car nodes) visited)))))
  
  (reverse (visit 'A '())))

(dfs 'A graph)
