(define insertR-f
  (lambda (test?)
    (lambda (new old lat)
      (cond
        ((null? lat) '())
        (else
          (cond
            ((test? (car lat) old)
             (cons old (cons new (cdr lat))))
            (else (cons (car lat)
                    ((insertR-f test?) new old
                      (cdr lat))))))))))
