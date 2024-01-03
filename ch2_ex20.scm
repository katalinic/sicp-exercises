(define (filtered-accumulate null-value combiner filter transform xs)
    (cond
        ((null? xs) null-value)
        ((filter (transform (car xs))) (
            combiner 
            (transform (car xs))
            (
                filtered-accumulate 
                null-value 
                combiner 
                filter 
                transform 
                (cdr xs)
            )
        ))
        (else (
            filtered-accumulate 
            null-value 
            combiner 
            filter 
            transform 
            (cdr xs)
        ))
    )
)

(define (ssqe xs) 
    (
        filtered-accumulate
        0 
        + 
        (lambda (x) (= 0 (remainder x 2))) 
        (lambda (x) (* x x)) 
        xs
    )
)

(define (same-parity . xs)
    (
        filtered-accumulate
        '()
        cons 
        (lambda (x) (= (remainder (car xs) 2) (remainder x 2))) 
        (lambda (x) x)
        xs
    )
)