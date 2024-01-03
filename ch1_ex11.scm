(define (frec n)
    (if (< n 3) 
        n 
        (+ 
            (* 1 (frec (- n 1)))
            (* 2 (frec (- n 2))) 
            (* 3 (frec (- n 3)))
        )
    )
)