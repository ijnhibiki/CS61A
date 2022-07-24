(define (over-or-under num1 num2) (if (< num1 num2)
                                    -1
                                    (if (= num1 num2)
                                        0
                                        1
                                    )
)
)
(define (composed f g) (lambda (x) (f (g x))))

(define (square n) (* n n))

(define (pow base exp) (cond 
    ((= exp 1) base)
    ((even? exp) (square (pow base (/ exp 2))))
    ((odd? exp) (* base (pow base (- exp 1))))))

(define (ascending? lst) (cond 
    ((null? (cdr lst)) #t)
    ((> (car lst) (car (cdr lst))) #f)
    (else (ascending? (cdr lst)))))
