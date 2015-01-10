(load "atom.scm")
(load "oplus.scm")
(define occur*
  (lambda (a l)
    (cond
      ((null? l) 0)
      ((atom? (car l))
       (cond
         ((eq? a (car l))
           (add1 (occur* a (cdr l))))
         (else (occur* a (cdr l)))))
      (else
        (o+ (occur* a (car l)) (occur* a (cdr l)))))))
