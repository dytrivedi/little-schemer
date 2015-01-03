(define subst
  (lambda (new old lat)
    (cond
      ((null? lat) '())
      (else
        (cond
          ((eq? (car lat) old)
           (cons new (cdr lat)))
          (else (cons (car lat)
                  (subst new old
                    (cdr lat)))))))))
