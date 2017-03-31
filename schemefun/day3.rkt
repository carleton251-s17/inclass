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

(define remove-first
  (lambda (s lst)
    (cond ( (null? lst) '() )
          ( (equal? s (car lst)) (cdr lst))
          ( else  (cons  (car lst)  (remove-first s (cdr lst)))))))

    
(check-equal? (remove-first 'a '(b a c d a)) '(b c d a))
(check-equal? (remove-first 'b '(a c e)) '(a c e))

(define nth
  (lambda (i lst)
    (if (equal? i 0)
        (car lst)
        (nth (- i 1) (cdr lst)))))

(check-equal? (nth 0 '(a b c)) 'a)
(check-equal? (nth 1 '(a b c)) 'b)
(check-equal? (nth 2 '(a b c)) 'c)