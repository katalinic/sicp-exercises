(define (tree-map f t)
    (
        cond
        ((null? t) '())
        ((not (pair? t)) (f t))
        (else (cons (tree-map f (car t)) (tree-map f (cdr t))))
    )
)