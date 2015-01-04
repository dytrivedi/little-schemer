(load "one.scm")
(define rempick
  (lambda (n lat)
    (cond
      ((one? n) (cdr lat))
      (else
        (cons (car lat) (rempick (sub1 n) (cdr lat)))))))
