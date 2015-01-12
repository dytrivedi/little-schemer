(define rember-f
  (lambda (test?)
    (lambda (a l)
      (cond
        ((null? l) '())
        ((test? a (car l)) (cdr l))
        (else
          (cons (car l) ((rember-f test?) a (cdr l))))))))
