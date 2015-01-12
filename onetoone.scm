(load "fun.scm")
(load "revrel.scm")
(define one-to-one?
  (lambda (fun)
    (fun? (revrel fun))))
