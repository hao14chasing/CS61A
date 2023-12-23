(define (over-or-under num1 num2) 
    'YOUR-CODE-HERE
    (if (< num1 num2)
        -1
        (if (= num1 num2)
            0
            1
        )
    )
)

(define (composed f g) 
    'YOUR-CODE-HERE
    (lambda(x) (f(g x)))
)

(define (square n) (* n n))

(define (pow base exp) 
    'YOUR-CODE-HERE
    (cond
        ((zero? exp) 1)
        ((even? exp) (square(pow base (quotient exp 2))))
        ((odd? exp) (* base (pow base (- exp 1)))))
        
)

(define (ascending? lst) 
    'YOUR-CODE-HERE
    (cond 
          ((null? lst) #t)
          ((null? (cdr lst)) #t)
          ((<= (car lst) (car (cdr lst))) (ascending? (cdr lst)))
          (else #f))
)
