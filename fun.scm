(load "set.scm")
(load "firsts.scm")
(define fun?
  (lambda (rel)
    (set? (firsts rel))))
