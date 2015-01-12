(load "equal.scm")
(define member?
  (lambda (a lat)
    (cond
      ((null? lat) #f)
      ((equal? (car lat) a) #t)
      (else (or (equal? (car lat) a) (member? a (cdr lat)))))))
