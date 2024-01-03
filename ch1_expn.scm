(define (expt b n)
    (
        if (= n 0) 
        1 
        (* b (expt b (- n 1)))
    )
)

(define (expt-iter b n)
    (define (expt-iter-helper i p)
        (
            if (= i 0)
            p
            (expt-iter-helper (- i 1) (* b p))
        ) 
    )
    (expt-iter-helper n 1)
)