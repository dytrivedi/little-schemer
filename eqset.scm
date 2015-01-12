(load "subset.scm")
(define eqset?
  (lambda (set1 set2)
    (and (subset? set1 set2) (subset? set2 set1))))
