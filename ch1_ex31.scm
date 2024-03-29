(define (sum term a next b)
    (
        if (> a b)
        0
        (+ (term a)
        (sum term (next a) next b))
    )
)

(define (product term a next b)
    (
        if (> a b)
        1
        (* (term a)
        (product term (next a) next b))
    )
)

(define (factorial n) (product (lambda (x) x) 1 (lambda (x) (+ x 1)) n))