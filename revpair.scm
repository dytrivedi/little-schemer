(load "first.scm")
(load "second.scm")
(load "build.scm")
(define revpair
  (lambda (pair)
    (build (second pair) (first pair))))
