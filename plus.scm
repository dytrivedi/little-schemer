(define plus
  (lambda (n m)
    (cond
      ((zero? m) n)
      (else (plus (add1 n) (sub1 m))))))
