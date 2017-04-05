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


