(define multiremberTuna
  (lambda (test? lat)
    (cond
      ((null? lat) '())
      ((test? (car lat)) (multiremberTuna test? (cdr lat)))
      (else
        (cons (car lat) (multiremberTuna test? (cdr lat)))))))
