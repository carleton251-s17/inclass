(require rackunit)
(define subst
  (lambda (old new input)
    input))


(check-equal? (subst 'b 'a '((b c) (b () d)))
                           '((a c) (a () d)))


(define subsets
  (lambda (lst)
    lst))
;; not necessarily in this order
(check-equal? (subsets '(1 2 3))
              '( () (1) (2) (3) (1 2) (1 3) (2 3) (1 2 3)))