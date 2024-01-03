(define (square x) (* x x))

(define (ssq x y) (+ (square x) (square y)))

(define (solution x y z)
    (cond ((and (< x y) (< x z)) (ssq y z)) 
          ((and (< y x) (< y z)) (ssq x z)) 
          ((and (< z x) (< z y)) (ssq x y)))
)
