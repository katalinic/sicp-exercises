(define (make-accumulator val)
    (
        lambda 
        (inc)
        (set! val (+ val inc))
        val
    )
)