;; normal version of multiplication
(define mult
  (lambda (a b)
    (* a b)))

(mult 3 5)

;; curried version of multiplication
(define cmult
  (lambda (a)
    (lambda (b)
      (* a b))))

;; uncurried
(define insert-list
  (lambda (item lst)
    .....))

(define curried-insert-list
  (lambda (item)
    (lambda (lst)
        .... )))

;; Show off how 'map' works in Scheme
(define add-one
  (lambda (x)
    (+ x 1)))

(add-one 12)

;; do this for every item in a list
;; map takes 2 parameters:
;;   - a function of one parameter
;;   - a list
(map add-one '(1 4 2 9 6))

;; "reduce" piece, in Scheme = foldl
;; foldl takes 3 parameters
;; - a function of two parameters
;; - an initial value
;; - a list
(foldl cons '() '(1 2 3))
(foldr cons '() '(1 2 3))

;; create map (call it my-map)
;; and my-foldl or my-foldr


