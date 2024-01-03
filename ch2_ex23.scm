(define (for-each f l)
    (
        if (null? l)
        true
        (
            begin (f (car l)) (for-each f (cdr l))
        )
    )
)