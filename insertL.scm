(load "insertg.scm")
(define insertL
  (insert-g
    (lambda (new old l)
      (cons new (cons old l)))))
