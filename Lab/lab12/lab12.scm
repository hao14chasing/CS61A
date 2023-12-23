; Owner and Vehicle Abstraction
(define (make-owner name age)
  (cons name (cons age nil)))

(define (get-name owner) (car owner))

(define (get-age owner) (car (cdr owner)))

(define (make-vehicle model year previous-owners)
  (cons model (cons year previous-owners)))

(define (get-model vehicle) 
'YOUR-CODE-HERE
     (car vehicle)
)

(define (get-year vehicle) 
'YOUR-CODE-HERE
   (car (cdr vehicle))
)

(define (get-owners vehicle) 
'YOUR-CODE-HERE
   (cdr (cdr vehicle))
)

(define (older-vehicle vehicle1 vehicle2)
  'YOUR-CODE-HERE
  (if (> (get-year vehicle1) (get-year vehicle2)) (get-model vehicle2)
      (get-model vehicle1)
  )
)

(define (new-owner vehicle owner) 
'YOUR-CODE-HERE
    (make-vehicle (get-model vehicle)
                  (get-year vehicle)
                  (cons owner (get-owners vehicle))
    )
)

(define (owners-names vehicle) 
'YOUR-CODE-HERE
   (map (lambda (name) (get-name name)) (get-owners vehicle))
)

(define (split-at lst n) 'YOUR-CODE-HERE)

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

(define (filter-odd t) 'YOUR-CODE-HERE)
