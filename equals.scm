(load "greaterthan.scm")
(load "lessthan.scm")
(define =
  (lambda (n m)
    (cond
      ((> n m) #f)
      ((< n m) #f)
      (else #t))))
