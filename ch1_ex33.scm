(define (filtered-accumulate null-value combiner filter term a next b)
    (
        if (> a b)
        null-value
        (
            combiner 
            (if (filter (term a)) (term a) null-value) 
            (
                filtered-accumulate 
                null-value 
                combiner 
                filter 
                term 
                (next a) 
                next 
                b
            )
        )
    )
)

(define (ssqe a b) 
    (
        filtered-accumulate
        0 
        + 
        (lambda (x) (= 0 (remainder x 2))) 
        (lambda (x) (* x x)) 
        a 
        (lambda (x) 
        (+ x 1)) 
        b
    )
)