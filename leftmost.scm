(load "atom.scm")
(define leftmost
  (lambda (l)
    (cond
      ((atom? (car l)) (car l))
      (else
        (leftmost (car l))))))
