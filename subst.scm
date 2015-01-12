(load "insertg.scm")
(define subst
  (insert-g
    (lambda (new old l)
      (cons new l))))
