(define (tail-replicate x n)
  ; BEGIN
  (define (helper x n result)
  (cond 
        ((= n 0) result)
        ((> n 0) (helper x (- n 1) (append result `(,x)))))
        ;(append result (cons x nil) works as wel
  ; END
  )
  (helper x n ())
  )