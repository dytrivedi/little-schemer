(define insertL-f
  (lambda (test?)
    (lambda (new old lat)
      (cond
        ((null? lat) '())
        (else
          (cond
            ((test? (car lat) old)
             (cons new (cdr lat)))
            (else (cons (car lat)
                    ((insertL-f test?) new old
                      (cdr lat))))))))))
