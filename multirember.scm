(load "equal.scm")
(define multirember
  (lambda (a lat)
    (cond
      ((null? lat) '())
      (else
        (cond
          ((equal? (car lat) a) (multirember a (cdr lat)))
          (else (cons (car lat) (multirember a (cdr lat)))))))))
