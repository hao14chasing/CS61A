(define (cddr s) (cdr (cdr s)))

(define (cadr s) 
'YOUR-CODE-HERE
    (car (cdr s))
)

(define (caddr s) 
'YOUR-CODE-HERE
   (car (cddr s))
)

(define (interleave lst1 lst2) 
'YOUR-CODE-HERE
   (cond ((null? lst1) lst2)
         ((null? lst2) lst1)
         ((cons (car lst1) (interleave lst2 (cdr lst1))))
   )
)

(define (my-filter pred lst)
 'YOUR-CODE-HERE
 (cond ((null? lst) nil)
       ((pred (car lst)) (cons (car lst) (my-filter pred (cdr lst))))
       ((my-filter pred (cdr lst)))
 )
)

(define (concatenate s) 
'YOUR-CODE-HERE
   (if (null? s)
       nil
       (append (car s) (concatenate (cdr s)))
   )
)
