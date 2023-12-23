(define (tail-replicate x n)
  ; BEGIN
  (define (helper lst count)
      (if (<= count 0)
           lst
           (helper (cons x lst) (- count 1))
      )
  )
  (helper nil n)
  ; END
)