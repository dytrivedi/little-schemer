(load "ocross.scm")
(define expt
  (lambda (n m)
    (cond
      ((zero? m) 1)
      (else
        (o* n (expt n (sub1 m)))))))
