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

;; helper function

(define cons-each
  (lambda (s lst)
    (if (null? lst) '()
        (cons   (cons s (car lst))
                (cons-each s (cdr lst))))))
    

(check-equal? (cons-each 'a '((b) (c) (d e)))
              '((a b) (a c) (a d e)))

(define subsets
  (lambda (lst)
    lst))
;; not necessarily in this order
;(check-equal? (subsets '(1 2 3))
;              '( () (1) (2) (3) (1 2) (1 3) (2 3) (1 2 3)))