(define (line) (fd 100))
(define (twice fn) (fn) (fn))
(define (repeat k fn)
    (fn)
    (if (> k 1) (repeat (- k 1) fn))
)