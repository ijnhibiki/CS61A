(define (cadr lst) (car (cdr lst)))

(define (make-kwlist1 keys values)
  (cons keys (list values)))

(define (get-keys-kwlist1 kwlist) (car kwlist))

(define (get-values-kwlist1 kwlist)
  (car (cdr kwlist)))

(define (make-kwlist2 keys values)
  (define (helper keys values result)
  (cond ((null? keys) result)
  (else (helper (cdr keys) (cdr values) (append result (list (list (car keys) (car values)))))))
  
  )
  
  (helper keys values ())
  )

(define (get-keys-kwlist2 kwlist) 
(define (helper kwlist result)
(cond ((null? kwlist) result)
(else (helper (cdr kwlist) (append result (list (car (car kwlist)))))))
)
(helper kwlist ())
)

(define (get-values-kwlist2 kwlist)
(define (helper kwlist result)
(cond ((null? kwlist) result)
(else (helper (cdr kwlist) (append result (cdr (car kwlist)))))
)
)  
(helper kwlist ())  
  )

(define (add-to-kwlist kwlist key value)
  (make-kwlist (append (get-keys-kwlist kwlist) (list key)) (append (get-values-kwlist kwlist) (list value))))

(define (get-first-from-kwlist kwlist key)
  (if (null? (get-keys-kwlist kwlist))
    nil
    (let ((values (get-values-kwlist kwlist))
          (keys (get-keys-kwlist kwlist)))
      (cond
        ((equal? (car keys) key) (car values))
        (else (get-first-from-kwlist (make-kwlist (cdr keys) (cdr values)) key))
      )
    )
  ))
