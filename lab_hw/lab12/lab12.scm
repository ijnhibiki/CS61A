; Owner and Vehicle Abstraction
(define (make-owner name age)
  (cons name (cons age nil)))

(define (get-name owner) (car owner))

(define (get-age owner) (car (cdr owner)))

(define (make-vehicle model year previous-owners)
  (cons model (cons year previous-owners)))

(define (get-model vehicle) (car vehicle))

(define (get-year vehicle) (car (cdr vehicle)))

(define (get-owners vehicle) (cdr (cdr vehicle)))

(define (older-vehicle vehicle1 vehicle2)
  (cond ((< (get-year vehicle1) (get-year vehicle2))(get-model vehicle1))
  (else (get-model vehicle2))))

(define (new-owner vehicle owner) (make-vehicle (get-model vehicle) (get-year vehicle) (append (list owner) (get-owners vehicle))))

(define (owners-names vehicle) (map get-name (get-owners vehicle)))

(define (split-at lst n)
        (define (helper lst n result)
        (cond ((> n 0) (if (null? lst)
        (cons result nil)
        (helper (cdr lst) (- n 1) (append result (list (car lst))))))
          (else (cons result lst))
        )
        )
(helper lst n ())
)

; Tree Abstraction
; Constructs tree given label and list of branches
(define (tree label branches)
  (cons label branches))

; Returns the label of the tree
(define (label t) (car t))

; Returns the list of branches of the given tree
(define (branches t) (cdr t))

; Returns #t if t is a leaf, #f otherwise
(define (is-leaf t) (null? (branches t)))

(define (filter-odd t)(cond ((null? t) nill)
((odd? (label t)) (tree (label t) (map filter-odd (branches t))))
(else (tree nil (map filter-odd (branches t)))))
)

