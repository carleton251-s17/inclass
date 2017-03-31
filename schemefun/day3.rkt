(define test
  (lambda (a b)
    (if (equal? a b)
        'pass
        'FAILED)))

(define list-length
  (lambda (lst)
    (if (null? lst)
        0
        (+ 1 (list-length (cdr lst))))))

;(test (list-length '(a b c)) 3)
;(test (list-length '(a)) 1)
;(test (list-length ()) 0)

(require rackunit)

(check-equal? (list-length '(a b c)) 3)
(check-equal? (list-length '(a)) 1)
(check-equal? (list-length ()) 0)


;; Test if input is a list of numbers