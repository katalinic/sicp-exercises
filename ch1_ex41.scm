(define (double f)
    (lambda (x) (f (f x)))
)

(define (inc x) (+ x 1))

(define double-inc (double inc))