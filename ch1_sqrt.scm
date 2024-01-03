(define (average x y) (/ (+ x y) 2))

(define (abs x) (if (< x 0) (- x) x))

(define (square x) (* x x))

(define (sqrt-iter guess x)
    (if (< (abs (- (square guess) x)) 0.001)
     guess
     (sqrt-iter (average guess (/ x guess)) x))
)

(define (sqrt x)
    (sqrt-iter 1. x)
)