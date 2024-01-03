(define (accumulate null-value combiner term a next b)
    (
        if (> a b)
        null-value
        (combiner (term a) (accumulate null-value combiner term (next a) next b))
    )
)

(define (sum term a next b)
    (accumulate 0 + term a next b)
)

(define (product term a next b)
    (accumulate 1 * term a next b)
)
