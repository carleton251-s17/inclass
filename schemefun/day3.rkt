;; Examples that produce a single result, combined via magic of recursion

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

(define list-of-numbers?
  (lambda (lst)
    (if (null? lst)
        #t
        (and (number? (car lst))
             (list-of-numbers? (cdr lst))))))
        

(check-equal? (list-of-numbers? '(5 3 1)) #t)
(check-equal? (list-of-numbers? '(5 a c 2)) #f)

;; Problems where we construct a list of items, via magic of recursion

