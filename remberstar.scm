(load "atom.scm")
(define rember*
  (lambda (a l)
    (cond
      ((null? l) '())
      ((atom? (car l))
        (cond
          ((eq? a (car l)) (rember* a (cdr l)))
          (else
            (cons (car l) (rember* a (cdr l))))))
        (else
          (cons (rember* a (car l)) (rember* a (cdr l)))))))
