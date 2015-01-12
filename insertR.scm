(load "insertg.scm")
(define insertR
  (insert-g
    (lambda (new old l)
      (cons old (cons new l)))))
