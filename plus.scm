(load "add1.scm")
(load "sub1.scm")
(define plus
  (lambda (n m)
    (cond
      ((zero? m) n)
      (else (plus (add1 n) (sub1 m))))))
