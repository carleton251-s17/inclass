(require rackunit)
(define subst
  (lambda (old new input)
    (cond [(null? input) '()]
          [(list? input)
           (cons (subst old new (car input))
                 (subst old new (cdr input)))]
          [(equal? input old) new]
          [else input])))
    


(check-equal? (subst 'b 'a '((b c) (b () d)))
                           '((a c) (a () d)))
(subst 'b 'a '((b c) (b () d)))


(define subsets
  (lambda (lst)
    lst))
;; not necessarily in this order
;(check-equal? (subsets '(1 2 3))
;              '( () (1) (2) (3) (1 2) (1 3) (2 3) (1 2 3)))