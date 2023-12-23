(define (cadr lst) (car (cdr lst)))

(define (make-kwlist1 keys values)
  'YOUR-CODE-HERE
  (list keys values)
)

(define (get-keys-kwlist1 kwlist) 
'YOUR-CODE-HERE
  (car kwlist)
)

(define (get-values-kwlist1 kwlist)
  'YOUR-CODE-HERE
  (cadr kwlist)
)

(define (make-kwlist2 keys values)
  'YOUR-CODE-HERE
     (if (null? keys)
         nil
         (cons (list (car keys) (car values)) (make-kwlist2 (cdr keys) (cdr values)))
     )
)

(define (get-keys-kwlist2 kwlist) 
'YOUR-CODE-HERE
  (if (null? kwlist)
      nil
      (cons (car (car kwlist)) (get-keys-kwlist2 (cdr kwlist)))
  )
)

(define (get-values-kwlist2 kwlist)
  'YOUR-CODE-HERE
  (if (null? kwlist)
      nil
      (cons (car (cdr (car kwlist))) (get-values-kwlist2 (cdr kwlist)))
  )
)

(define (add-to-kwlist kwlist key value)
  'YOUR-CODE-HERE)

(define (get-first-from-kwlist kwlist key)
  'YOUR-CODE-HERE)
