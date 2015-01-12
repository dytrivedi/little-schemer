(load "revpair.scm")
(define revrel
  (lambda (rel)
    (cond
    ((null? rel) '())
    (else
      (cons (revpair (car rel)) (revrel (cdr rel)))))))
