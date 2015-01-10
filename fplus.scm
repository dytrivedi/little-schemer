(load "sero.scm")
(load "edd1.scm")
(load "zub1.scm")
(define f+
  (lambda (n m)
    (cond
      ((sero? m) n)
      (else
        (edd1 (f+ n (zub1 m)))))))
