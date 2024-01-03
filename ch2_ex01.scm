(define (make-rat n d)
    (
        let ((g (gcd (abs n) (abs d)))
             (ds (if (< d 0) (- 1) 1)))
            (cons (* (/ n g) ds) (* (/ d g) ds))
    )
)
