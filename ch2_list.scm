(define (list-ref l n)
    (
        if (= n 0)
        (car l)
        (list-ref (cdr l) (- n 1))
    )
)

(define (length l)
    (
        if (null? l)
        0
        (+ 1 (length (cdr l)))
    )
)

(define (length2 l)
    (define (length-iter l count)
        (
            if (null? l)
            count
            (length-iter (cdr l) (+ count 1))
        )
    )
    (length-iter l 0)
)

(define (append l1 l2)
    (
        if (null? l1)
        l2
        (cons (car l1) (append (cdr l1) l2))
    )
)

(define (map f l)
    (
        if (null? l)
        '()
        (
            cons (f (car l)) (map f (cdr l))
        )
    )
)

(define (enumerate-interval a b)
    (
        if (> a b)
        '()
        (cons a (enumerate-interval (+ a 1) b))
    )
)
