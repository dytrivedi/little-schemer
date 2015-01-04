(load "oplus.scm")
(define tup+
  (lambda (tup1 tup2)
    (cond
      ((null? tup1) tup2)
      ((null? tup2) tup1)
      (else
        (cons (o+ (car tup1) (car tup2)) (tup+ (cdr tup1) (cdr tup2)))))))
