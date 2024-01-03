(define (cons a b)
    (* (expt 2 a) (expt 3 b))
)

(define (car c)
    (define (car-iter x count)
        (if (= 0 (remainder x 2))
        (car-iter (/ x 2) (+ count 1))
        count
        )
    )
    (car-iter c 0)
)

(define (cdr c)
    (define (cdr-iter x count)
        (if (= 0 (remainder x 3))
        (cdr-iter (/ x 3) (+ count 1))
        count
        )
    )
    (cdr-iter c 0)
)