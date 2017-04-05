(define my-map
  (lambda (f lst)
    (if (null? lst) '()
        (cons (f (car lst))
              (my-map f (cdr lst))))))

(define my-foldl
  (lambda (f init lst)
    (if (null? lst)
        init
        (my-foldl f
                  (f (car lst) init)
                  (cdr lst)))))

(define my-foldr
  (lambda (f init lst)
    (if (null? lst)
        init
        (f (car lst) (my-foldr f init (cdr lst))))))

(define add-one
  (lambda (x)
    (+ x 1)))

(my-map add-one '(1 2 3))

(foldl cons '() '(1 2 3))
(foldr cons '() '(1 2 3))