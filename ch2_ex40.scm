(define (accumulate op initial sequence)
    (
        if (null? sequence)
        initial
        (op (car sequence) (accumulate op initial (cdr sequence)))
    )
)

(define (map p sequence)
    (accumulate (lambda (x y) (cons (p x) y)) '() sequence)
)

(define (enumerate-interval a b)
    (
        if (> a b)
        '()
        (cons a (enumerate-interval (+ a 1) b))
    )
)

(define (unique-pairs n)
    (
        accumulate
        append
        '()
        (
            map 
            (
                lambda (i) 
                (
                    map 
                    (lambda (j) (list j i))
                    (enumerate-interval 1 (- i 1))
                )
            ) 
            (enumerate-interval 1 n)  ; loop across i
        )
    )
)