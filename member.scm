(define member?
  (lambda (a lat)
    (cond
      ((null? lat) #f)
      ((eq? (car lat) a) #t)
      (else (or (eq? (car lat) a) (member? a (cdr lat)))))))
