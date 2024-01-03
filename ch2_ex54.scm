(define (equal? a b)
    (
        cond
        ((and (symbol? a) (symbol? b)) (eq? a b))
        ((and (list? a) (list? b)) (
            cond 
            ((and (null? a) (null? b)) true)
            ((and (not (null? a)) (not (null? b))) (and (equal? (car a) (car b)) (equal? (cdr a) (cdr b))))
            (else false)
        ))
        (else false)
    )
)