(let ( (x 1)  (y 5) )
  1)


(define add-me
  (lambda (x)
    (+ x 1)))

(define add-and-multiply
  (lambda (y)
    (* 6 (add-me y))))

(add-and-multiply 12)

;; without define

((lambda (y)
    (* 6 (add-me y))) 12)


((lambda (y)
    (* 6 (
          (lambda (x)
            (+ x 1)) y))) 12)
